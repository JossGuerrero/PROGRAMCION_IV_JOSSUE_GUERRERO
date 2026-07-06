import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/model/auth_models.dart';
import '../../domain/repository/auth_repository.dart';
import '../remote/api/dio_client.dart';

class AuthRepositoryImpl implements AuthRepository {
  final Dio _dio;

  AuthRepositoryImpl(this._dio);

  @override
  Future<AuthTokens> login(String username, String password) async {
    final response = await _dio.post(
      '/auth/login/',
      data: {'username': username, 'password': password},
    );

    return AuthTokens(
      access: response.data['access'] as String,
      refresh: response.data['refresh'] as String,
    );
  }

  @override
  Future<LoggedUser> me() async {
    final response = await _dio.get('/auth/me/');
    return LoggedUser.fromMap(response.data as Map);
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(ref.watch(dioProvider));
});
