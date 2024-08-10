import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/entities.dart';
import '../../../infrastructure/datasources/token/token_datasource_impl.dart';
import '../../../infrastructure/repositories/token/token_repositry_impl.dart';

part 'token_repository_provider.g.dart';

@Riverpod()
class TokenRepository extends _$TokenRepository {
  @override
  TokenRepositryImpl build() =>
      TokenRepositryImpl(datasource: TokenDatasourceImpl());

  Future<Token> requestAccesToken() async {
    return state.datasource.requestAccesToken();
  }
}
