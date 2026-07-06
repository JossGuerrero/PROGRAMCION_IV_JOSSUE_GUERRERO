import '../model/auth_models.dart';

abstract class AuthRepository {
  Future<AuthTokens> login(String username, String password);
  Future<LoggedUser> me();
}
