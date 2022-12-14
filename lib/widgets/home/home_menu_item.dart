import 'package:flutter/material.dart';

import '../../constants/themes/colors.dart';

class HomeMenuItem extends StatelessWidget {
  final HomeMenu homeMenu;

  const HomeMenuItem({
    Key? key,
    required this.homeMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          homeMenu.title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: homeMenu.isSeleted ? null : placeholder,
              ),
        ),
        if (homeMenu.isSeleted)
          Column(
            children: [
              const SizedBox(height: 5),
              Transform.rotate(
                angle: 95,
                child: Container(
                  width: 5,
                  height: 5,
                  color: secondary,
                ),
              ),
            ],
          )
      ],
    );
  }
}

class HomeMenu {
  final String title;
  bool isSeleted;

  HomeMenu({required this.title, required this.isSeleted});
}
