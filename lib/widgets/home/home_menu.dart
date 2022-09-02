import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_fashion/constants/extension.dart';
import 'package:open_fashion/constants/themes/colors.dart';

import '../../utils/ui/divider.dart';
import 'home_menu_item.dart';

class HomeMenuSection extends StatefulWidget {
  const HomeMenuSection({super.key});

  @override
  State<HomeMenuSection> createState() => _HomeMenuSectionState();
}

class _HomeMenuSectionState extends State<HomeMenuSection> {
  List<HomeMenu> list = [];

  @override
  void initState() {
    list.addAll([
      HomeMenu(title: 'All', isSeleted: true),
      HomeMenu(title: 'Apparel', isSeleted: false),
      HomeMenu(title: 'Dress', isSeleted: false),
      HomeMenu(title: 'Tshirt', isSeleted: false),
      HomeMenu(title: 'Bag', isSeleted: false),
    ]);
    super.initState();
  }

  void _onTap(int index) {
    setState(() {
      for (var item in list) {
        item.isSeleted = false;
      }

      list[index].isSeleted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 36,
          alignment: Alignment.center,
          width: context.width,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => _onTap(index),
                child: HomeMenuItem(homeMenu: list[index]),
              );
            },
          ),
        ),
        const ArrivalSection(),
        const CustomDivider(),
      ],
    );
  }
}

class ArrivalSection extends StatelessWidget {
  const ArrivalSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Arrival> arrivalList = [
      Arrival(
        image: 'product-1.webp',
        title: '21WN reversible angora cardigan',
        price: 120,
      ),
      Arrival(
        image: 'product-2.webp',
        title: '21WN reversible angora cardigan',
        price: 120,
      ),
      Arrival(
        image: 'product-3.webp',
        title: '21WN reversible angora',
        price: 130,
      ),
      Arrival(
        image: 'product-4.webp',
        title: 'Oblong bag',
        price: 125,
      ),
    ];
    return Column(
      children: [
        SizedBox(
          height: context.height * 0.75,
          // width: context.width * 0.7,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.1 / 1.5,
              crossAxisSpacing: 1.1,
              mainAxisSpacing: 13,
            ),
            itemCount: arrivalList.length,
            itemBuilder: (context, index) {
              return ArrivalSectionItem(
                arrival: arrivalList[index],
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Explore More',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(width: 10),
            SvgPicture.asset(
              'assets/icons/Forward Arrow.svg',
              width: 20,
              height: 20,
            )
          ],
        ),
      ],
    );
  }
}

class ArrivalSectionItem extends StatelessWidget {
  final Arrival arrival;
  const ArrivalSectionItem({super.key, required this.arrival});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/media/${arrival.image}',
        ),
        const SizedBox(height: 5),
        Text(
          arrival.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 8),
        Text(
          "\$${arrival.price}",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: secondary,
              ),
        )
      ],
    );
  }
}

class Arrival {
  final String image;
  final String title;
  final double price;

  Arrival({
    required this.image,
    required this.title,
    required this.price,
  });
}
