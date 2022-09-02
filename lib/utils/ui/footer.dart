import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/themes/colors.dart';
import 'divider.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/Twitter.svg'),
              const SizedBox(width: 45),
              SvgPicture.asset('assets/icons/Instagram.svg'),
              const SizedBox(width: 45),
              SvgPicture.asset('assets/icons/YouTube.svg'),
            ],
          ),
          const CustomDivider(),
          Column(
            children: [
              Text(
                'support@openui.design',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 5),
              Text(
                '+60 825 876',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 5),
              Text(
                '08:00 - 22:00 - Everyday',
                style: Theme.of(context).textTheme.titleSmall,
              )
            ],
          ),
          const CustomDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'About',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(width: 52),
              Text(
                'Contact',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(width: 52),
              Text(
                'Blog',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 45,
            width: double.infinity,
            color: const Color(0xFFC4C4C4),
            alignment: Alignment.center,
            child: Text(
              'Copyright© OpenUI All Rights Reserved.',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: label,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
