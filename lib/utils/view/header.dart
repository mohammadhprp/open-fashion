import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  final Color? background;
  const Header({Key? key, this.background}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: background ?? const Color(0xFFE7EAEF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/icons/Menu.svg'),
          Expanded(
            child:
                Image.asset('assets/images/Logo.webp', width: 73, height: 32),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/icons/Search.svg'),
              const SizedBox(width: 16),
              SvgPicture.asset('assets/icons/shopping bag.svg'),
            ],
          ),
        ],
      ),
    );
  }
}
