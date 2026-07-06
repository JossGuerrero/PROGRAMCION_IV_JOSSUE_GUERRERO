import '../model/user.dart';

abstract class AdminRepository {
  Future<List<User>> getUsers();
}
