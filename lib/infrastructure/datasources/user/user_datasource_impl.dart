import 'package:dio/dio.dart';

import '../../../config/constants/http.dart';
import '../../../domain/datasources/users/users_datasource.dart';
import '../../../domain/entities/entities.dart';
import '../../mappers/user_mapper.dart';
import '../../models/user_response.dart';

class UserDatasourceImpl extends UsersDatasource {
  @override
  Future<User> getCurrentUser(String token) async {
    try {
      final response = await Http.apiUrl.get('me',
          options: Options(headers: {'Authorization': 'Bearer $token'}));

      final userResponse = UserResponse.fromJson(response.data);
      final userMapped = UserMapper.userResponseToUserEntity(userResponse);

      return userMapped;
    } catch (_) {
      throw Exception('Failed to fetch user');
    }
  }
}
