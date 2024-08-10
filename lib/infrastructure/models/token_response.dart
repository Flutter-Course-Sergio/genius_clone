import 'dart:convert';

TokenResponse tokenResponseFromJson(String str) => TokenResponse.fromJson(json.decode(str));

String tokenResponseToJson(TokenResponse data) => json.encode(data.toJson());

class TokenResponse {
    final String accessToken;
    final String tokenType;
    final int expiresIn;

    TokenResponse({
        required this.accessToken,
        required this.tokenType,
        required this.expiresIn,
    });

    factory TokenResponse.fromJson(Map<String, dynamic> json) => TokenResponse(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        expiresIn: json["expires_in"],
    );

    Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "expires_in": expiresIn,
    };
}
