import '../../entities/user.dart';

abstract class UsersRepository {
  Future<User> getCurrentUser(String token);
}
