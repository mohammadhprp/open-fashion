import 'package:logger/logger.dart';

final Logger logger = Logger();

extension Log on Object {
  void log() => logger.v(toString());
  void eLog() => logger.e(toString());
  void wLog() => logger.w(toString());
  void iLog() => logger.i(toString());
}
