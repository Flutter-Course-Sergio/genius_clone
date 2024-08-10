import 'package:dio/dio.dart';
import 'package:genius_clone/config/constants/environment.dart';

class Http {
  static Dio apiUrl = Dio(BaseOptions(baseUrl: Environment.apiUrl));
  static Dio tokenUrl = Dio(BaseOptions(baseUrl: Environment.tokenUrl));
}
