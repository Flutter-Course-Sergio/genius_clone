import 'package:genius_clone/domain/entities/token.dart';

import '../../../domain/datasources/token/token_datasource.dart';
import '../../../domain/repositories/token/token_repository.dart';

class TokenRepositryImpl extends TokenRepository {
  final TokenDatasource datasource;

  TokenRepositryImpl({required this.datasource});

  @override
  Future<Token> requestAccesToken() {
    return datasource.requestAccesToken();
  }
}
