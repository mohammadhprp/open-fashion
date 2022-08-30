import 'package:flutter/material.dart';
import 'package:open_fashion/utils/utils_export.dart' show Header, Footer;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Header(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
