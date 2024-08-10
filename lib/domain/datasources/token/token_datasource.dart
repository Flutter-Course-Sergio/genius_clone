import '../../entities/entities.dart';

abstract class TokenDatasource {
  Future<Token> requestAccesToken();
}
