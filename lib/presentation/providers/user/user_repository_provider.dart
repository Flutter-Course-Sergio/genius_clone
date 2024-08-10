import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/entities.dart';
import '../../../infrastructure/datasources/user/user_datasource_impl.dart';
import '../../../infrastructure/repositories/user/user_repository_impl.dart';

part 'user_repository_provider.g.dart';

@Riverpod()
class UserRepository extends _$UserRepository {
  @override
  UserRepositoryImpl build() =>
      UserRepositoryImpl(datasource: UserDatasourceImpl());

  Future<User> getCurrentUser(String token) async {
    return await state.datasource.getCurrentUser(token);
  }
}
