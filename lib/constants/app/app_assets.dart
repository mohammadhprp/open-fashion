import 'package:flutter/foundation.dart' show immutable;

@immutable
class AppAssets {
  static const _images = 'assets/images';

  static const divider = '$_images/divider.webp';
  static const logo = '$_images/Logo.webp';
  static const homeBanner = '$_images/home-banner.webp';

  const AppAssets._();
}
