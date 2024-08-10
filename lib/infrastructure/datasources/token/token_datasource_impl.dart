import 'package:dio/dio.dart';

import '../../../config/constants/environment.dart';
import '../../../config/constants/http.dart';
import '../../../domain/datasources/token/token_datasource.dart';
import '../../../domain/entities/entities.dart';
import '../../mappers/token_mapper.dart';
import '../../models/token_response.dart';

class TokenDatasourceImpl extends TokenDatasource {
  @override
  Future<Token> requestAccesToken() async {
    try {
      final response = await Http.tokenUrl.post('api/token',
          options: Options(
            headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          ),
          data: {
            'grant_type': 'client_credentials',
            'client_id': Environment.clientId,
            'client_secret': Environment.clientSecret
          });

      final tokenResponse = TokenResponse.fromJson(response.data);
      final tokenMapped = TokenMapper.tokenResponseToTokenEntity(tokenResponse);

      return tokenMapped;
    } catch (_) {
      throw Exception('Failed to request access token');
    }
  }
}
