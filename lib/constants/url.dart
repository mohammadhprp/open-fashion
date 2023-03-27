import 'package:flutter/foundation.dart' show immutable;

@immutable
class Url {
  static const url = '';

  static const storage = '$url/storage';
  static const images = '$storage/images';

  const Url._();
}
