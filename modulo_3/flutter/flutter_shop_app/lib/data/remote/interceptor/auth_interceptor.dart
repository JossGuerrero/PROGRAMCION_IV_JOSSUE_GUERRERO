import 'package:dio/dio.dart';
import '../../local/secure_storage.dart';

class AuthInterceptor extends Interceptor {
  final SecureStorage storage;
  final Dio dio;

  AuthInterceptor(this.storage, this.dio);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await storage.getAccess();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final response = err.response;
    if (response?.statusCode != 401) {
      handler.next(err);
      return;
    }
    if (err.requestOptions.path.contains('/auth/token/refresh/')) {
      await storage.clearSession();
      handler.next(err);
      return;
    }
    if (err.requestOptions.extra['_retry'] == true) {
      await storage.clearSession();
      handler.next(err);
      return;
    }

    final refresh = await storage.getRefresh();
    if (refresh == null || refresh.isEmpty) {
      await storage.clearSession();
      handler.next(err);
      return;
    }

    try {
      final refreshResponse = await dio.post(
        '/auth/token/refresh/',
        data: {'refresh': refresh},
        options: Options(extra: {'_retry': true}),
      );
      final newAccess = refreshResponse.data['access'] as String;
      final newRefresh = refreshResponse.data['refresh'] as String?;
      await storage.saveAccessToken(newAccess);
      if (newRefresh != null) {
        await storage.saveTokens(newAccess, newRefresh);
      }

      final retryOptions = err.requestOptions;
      retryOptions.headers['Authorization'] = 'Bearer $newAccess';
      retryOptions.extra['_retry'] = true;
      final retryResponse = await dio.fetch(retryOptions);
      handler.resolve(retryResponse);
    } on DioException {
      await storage.clearSession();
      handler.next(err);
    }
  }
}
