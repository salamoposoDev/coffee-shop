import 'package:coffee_shop/home/screens/coffee_detail_screen.dart';
import 'package:coffee_shop/home/widgets/molecules/categoryCard.dart';
import 'package:coffee_shop/models/coffee_model.dart';
import 'package:flutter/material.dart';

class IceCoffeeList extends StatelessWidget {
  const IceCoffeeList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemCount: demoIceCoffee.length,
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
                  coffeeModel: demoIceCoffee[index],
                ),
              ),
            );
          },
          child: CategoryCard(
            tag: demoIceCoffee[index].imageUrl,
            text: demoIceCoffee[index].name,
            topping: demoIceCoffee[index].topping,
            price: demoIceCoffee[index].price,
            imageUrl: demoIceCoffee[index].imageUrl,
            rating: demoIceCoffee[index].rating,
          ),
        );
      },
    );
  }
}
