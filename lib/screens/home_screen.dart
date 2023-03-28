import 'package:flutter/material.dart';

import '../components/layout/footer.dart';
import '../components/layout/header.dart';
import '../widgets/home/home_banner.dart';
import '../widgets/home/home_menu/home_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          HomeBanner(),
          Header(),
          SizedBox(height: 30),
          HomeMenuSection(),
          Footer(),
        ],
      ),
    );
  }
}
