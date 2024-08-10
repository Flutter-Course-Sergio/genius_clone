import '../../domain/entities/entities.dart';
import '../models/token_response.dart';

class TokenMapper {
  static tokenResponseToTokenEntity(TokenResponse token) => Token(
      token: token.accessToken,
      type: token.tokenType,
      expires: token.expiresIn);
}
