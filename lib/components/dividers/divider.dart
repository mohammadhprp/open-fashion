import 'package:flutter/material.dart';

import '../../constants/app/app_assets.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 124,
      height: 50,
      child: Image.asset(AppAssets.divider),
    );
  }
}
