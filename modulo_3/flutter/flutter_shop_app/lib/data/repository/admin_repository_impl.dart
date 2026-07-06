import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/model/user.dart';
import '../../domain/repository/admin_repository.dart';
import '../remote/api/user_remote_datasource.dart';

class AdminRepositoryImpl implements AdminRepository {
  final UserRemoteDatasource _datasource;

  AdminRepositoryImpl(this._datasource);

  @override
  Future<List<User>> getUsers() async {
    final response = await _datasource.getUsers();
    return response.results;
  }
}

final adminRepositoryProvider = Provider<AdminRepository>((ref) {
  return AdminRepositoryImpl(ref.watch(userDatasourceProvider));
});
