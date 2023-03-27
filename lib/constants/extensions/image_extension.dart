import '../enum/image_type.dart';

extension ImageTypeExtension on String {
  ImageType get imageType {
    if (startsWith('http') || startsWith('https')) {
      return ImageType.network;
    }
    if (startsWith('assets') ||
        startsWith('asset') ||
        startsWith('images') ||
        startsWith('images')) {
      return ImageType.asset;
    }

    throw Exception('Unknown type of images');
  }
}
