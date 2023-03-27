import 'package:flutter/foundation.dart' show immutable;

@immutable
class AppErrors {
  static const vpnConnected = '';

  static const invalidEmail = '';
  static const invalidOTP = '';
  static const errorMessage = '';

  static const cancelBySever = '';
  static const connectTimeout = '';
  static const server = '';
  static const receiveTimeout = '';
  static const sendTimeout = '';
  static const internet = '';
  static const someThingWentWrong = '';

  static const e400 = '';
  static const e401 = '';
  static const e403 = '';
  static const e404 = '';
  static const e422 = '';

  const AppErrors._();
}
