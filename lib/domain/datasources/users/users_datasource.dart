import '../../entities/user.dart';

abstract class UsersDatasource {
  Future<User> getCurrentUser(String token);
}
