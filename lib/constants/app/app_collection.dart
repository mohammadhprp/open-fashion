import 'package:flutter/foundation.dart' show immutable;

@immutable
class AppCollection {
  static const products = 'products';
  static const banner = 'banner';
  static const blog = 'blog';
  static const owners = 'owners';

  const AppCollection._();
}
