import 'package:coffee_shop/home/screens/coffee_detail_screen.dart';
import 'package:coffee_shop/home/widgets/molecules/categoryCard.dart';
import 'package:coffee_shop/models/coffee_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addProvider = StateProvider((ref) => false);

class CappuccinoList extends ConsumerWidget {
  const CappuccinoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemCount: demoCoffee.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        childAspectRatio: 1 / 1.3,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CoffeeDetailScreen(
                  coffeeModel: demoCoffee[index],
                ),
              ),
            );
          },
          child: CategoryCard(
            onAdd: () {
              ref.read(addProvider.notifier).state = true;
            },
            tag: demoCoffee[index].imageUrl,
            text: demoCoffee[index].name,
            topping: demoCoffee[index].topping,
            price: demoCoffee[index].price,
            imageUrl: demoCoffee[index].imageUrl,
            rating: demoCoffee[index].rating,
          ),
        );
      },
    );
  }
}
