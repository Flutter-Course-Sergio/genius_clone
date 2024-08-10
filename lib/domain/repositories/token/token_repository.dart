import '../../entities/entities.dart';

abstract class TokenRepository {
  Future<Token> requestAccesToken();
}
