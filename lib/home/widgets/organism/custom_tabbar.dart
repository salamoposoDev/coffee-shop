import 'package:coffee_shop/home/widgets/molecules/category_tab_item.dart';
import 'package:coffee_shop/home/widgets/organism/cappuccino_list.dart';
import 'package:coffee_shop/home/widgets/organism/cold_brew_list.dart';
import 'package:coffee_shop/home/widgets/organism/espresso_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final coffeeListProvider = StateProvider((ref) => 0);

class CustomTabbar extends ConsumerStatefulWidget {
  const CustomTabbar({super.key});

  @override
  ConsumerState<CustomTabbar> createState() => _CustomTabbarState();
}

class _CustomTabbarState extends ConsumerState<CustomTabbar> {
  int _selectedIndex = 0;

  final coffeeCategory = [
    ['Cappuccino', 'lib/assets/icons/cappuccino.png'],
    ['Cold Brew', 'lib/assets/icons/cold.png'],
    ['Espresso', 'lib/assets/icons/espresso.png'],
  ];
  final coffeeList = [
    CappuccinoList(),
    IceCoffeeList(),
    EspressoList(),
  ];
  @override
  Widget build(BuildContext context) {
    final _coffeListIndex = ref.watch(coffeeListProvider);
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView.builder(
            itemCount: coffeeCategory.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                    ref.read(coffeeListProvider.notifier).state = index;
                  },
                  child: Categories(
                    text: coffeeCategory[index][0],
                    icon: coffeeCategory[index][1],
                    isSelected: _selectedIndex == index ? true : false,
                    duration: 500,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        coffeeList[_coffeListIndex],
      ],
    );
  }
}
