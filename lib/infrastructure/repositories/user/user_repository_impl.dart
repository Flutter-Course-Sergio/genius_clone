import 'package:genius_clone/domain/entities/user.dart';

import '../../../domain/datasources/users/users_datasource.dart';
import '../../../domain/repositories/users/users_repository.dart';

class UserRepositoryImpl extends UsersRepository {
  final UsersDatasource datasource;

  UserRepositoryImpl({required this.datasource});

  @override
  Future<User> getCurrentUser(String token) {
    return datasource.getCurrentUser(token);
  }
}
