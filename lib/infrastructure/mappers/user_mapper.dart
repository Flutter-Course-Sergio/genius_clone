import '../../domain/entities/entities.dart';
import '../models/user_response.dart';

class UserMapper {
  static userResponseToUserEntity(UserResponse user) {
    List<LocalImage> images = [];

    for (var image in user.images) {
      images.add(userImageToImageEntity(image));
    }

    return User(name: user.displayName, country: user.country, images: images);
  }

  static userImageToImageEntity(Image image) {
    return LocalImage(url: image.url, width: image.width, height: image.height);
  }
}
