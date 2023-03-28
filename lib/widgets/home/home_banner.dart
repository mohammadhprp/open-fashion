import 'package:flutter/material.dart';

import '../../constants/app/app_assets.dart';
import '../../constants/extensions/media_query_extension.dart';
import '../../constants/themes/app_colors.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
