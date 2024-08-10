import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static initEnvironment() async {
    await dotenv.load(fileName: '.env');
  }

  static String apiUrl =
      dotenv.env['SPOTIFY_API_URL'] ?? 'No está configurado el SPOTIFY_API_URL';

  static String tokenUrl = dotenv.env['SPOTIFY_ACCOUNTS_URL'] ??
      'No está configurado el SPOTIFY_ACCOUNTS_URL';

  static String clientId =
      dotenv.env['SPOTIFY_CLIENT_ID'] ?? 'No esté configurado el CLIENT_ID';

  static String clientSecret = dotenv.env['SPOTIFY_CLIENT_SECRET'] ??
      'No esté configurado el SPOTIFY_CLIENT_SECRET';
}
