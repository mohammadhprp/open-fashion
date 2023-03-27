import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

Map<String, Widget Function(BuildContext)> router() => {
      RouteNames.home: (context) => const HomeScreen(),
    };

class RouteNames {
  static const home = 'home/';

  RouteNames._();
}
