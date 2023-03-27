import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'constants/app/app_strings.dart';
import 'constants/themes/theme_data.dart';
import 'firebase_options.dart';
import 'screens/home_screen.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      theme: themes.theme(),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
