import 'package:coffee_shop/home/widgets/molecules/category_tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedIndexRiverpod = StateProvider((ref) => 0);
final coffeeSizeProvider = StateProvider((ref) => 0);

class TabbarSize extends ConsumerWidget {
  TabbarSize({
    super.key,
  });

  final size = ['Small', 'Medium', 'Large'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(selectedIndexRiverpod);
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            size.length,
            (index) => Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: InkWell(
                  onTap: () {
                    ref.read(selectedIndexRiverpod.notifier).state = index;
                    if (index == 1) {
                      ref.read(coffeeSizeProvider.notifier).state = 10000;
                    } else if (index == 2) {
                      ref.read(coffeeSizeProvider.notifier).state = 20000;
                    } else {
                      ref.read(coffeeSizeProvider.notifier).state = 0;
                    }
                  },
                  borderRadius: BorderRadius.circular(8),
                  child: Categories(
                    isSelected: isSelected == index ? true : false,
                    text: size[index],
                    duration: 1000,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
