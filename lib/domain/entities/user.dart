import 'package:genius_clone/domain/entities/image.dart';

class User {
  String country;
  String name;
  List<LocalImage> images;

  User({
    required this.country,
    required this.name,
    required this.images,
  });
}
