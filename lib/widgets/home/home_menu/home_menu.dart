import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/dividers/divider.dart';
import '../../../constants/extensions/media_query_extension.dart';
import '../../../constants/themes/app_colors.dart';
import '../../../models/product/product.dart';
import 'home_menu_item.dart';

class HomeMenuSection extends HookWidget {
  const HomeMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    final list = useState(<HomeMenu>[]);

    return Column(
      children: [
        Text(
          'New Arrival'.toUpperCase(),
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                letterSpacing: 4,
              ),
        ),
        const CustomDivider(),
        Column(
          children: [
            Container(
              height: 36,
              alignment: Alignment.center,
              width: context.width,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: list.value.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      for (var item in list.value) {
                        item.isSelected = false;
                      }

                      list.value[index].isSelected = true;
                    },
                    child: HomeMenuItem(homeMenu: list.value[index]),
                  );
                },
              ),
            ),
            const ArrivalSection(),
            const CustomDivider(),
          ],
        ),
      ],
    );
  }
}

class ArrivalSection extends StatelessWidget {
  const ArrivalSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product> arrivalList = [
      Product(
        image: 'product-1.webp',
        title: '21WN reversible angora cardigan',
        price: 120,
      ),
      Product(
        image: 'product-2.webp',
        title: '21WN reversible angora cardigan',
        price: 120,
      ),
      Product(
        image: 'product-3.webp',
        title: '21WN reversible angora',
        price: 130,
      ),
      Product(
        image: 'product-4.webp',
        title: 'Oblong bag',
        price: 125,
      ),
    ];
    return Column(
      children: [
        SizedBox(
          height: context.height * 0.75,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2 / 1.5,
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
  final Product arrival;
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
                color: AppColors.primary,
              ),
        )
      ],
    );
  }
}
