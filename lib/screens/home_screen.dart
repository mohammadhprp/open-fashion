import 'package:flutter/material.dart';

import '../components/dividers/divider.dart';
import '../components/layout/footer.dart';
import '../components/layout/header.dart';
import '../constants/app/app_assets.dart';
import '../constants/extensions/media_query_extension.dart';
import '../constants/themes/app_colors.dart';
import '../widgets/home/home_menu.dart';

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
                  AppAssets.homeBanner,
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
                        backgroundColor: Colors.black.withOpacity(0.4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        'Explore Collection'.toUpperCase(),
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: AppColors.white100,
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
