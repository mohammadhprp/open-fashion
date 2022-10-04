import 'package:flutter/material.dart';
import '../constants/themes/colors.dart';
import 'package:open_fashion/utils/utils_export.dart'
    show Header, Footer, CustomDivider;
import 'package:open_fashion/widgets/home/home_menu.dart';

import '../../constants/extensions/extension_export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const Header(),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  'assets/images/home-banner.webp',
                  fit: BoxFit.fitWidth,
                  width: context.width,
                  height: context.height * 0.75,
                ),
                Positioned(
                  bottom: 40,
                  child: SizedBox(
                    width: 253,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.black.withOpacity(0.4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        'Explore Collection'.toUpperCase(),
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: offWhite,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                Column(
                  children: [
                    Text(
                      'New Arrival'.toUpperCase(),
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            letterSpacing: 4,
                          ),
                    ),
                    const CustomDivider(),
                  ],
                ),
                const HomeMenuSection()
              ],
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
