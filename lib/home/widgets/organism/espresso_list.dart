import 'package:coffee_shop/home/screens/coffee_detail_screen.dart';
import 'package:coffee_shop/home/widgets/molecules/categoryCard.dart';
import 'package:coffee_shop/models/coffee_model.dart';
import 'package:flutter/material.dart';

class EspressoList extends StatelessWidget {
  const EspressoList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemCount: demoEspressoCoffee.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        childAspectRatio: 1 / 1.2,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CoffeeDetailScreen(
                  coffeeModel: demoEspressoCoffee[index],
                ),
              ),
            );
          },
          child: CategoryCard(
            tag: demoEspressoCoffee[index].imageUrl,
            text: demoEspressoCoffee[index].name,
            topping: demoEspressoCoffee[index].topping,
            price: demoEspressoCoffee[index].price,
            imageUrl: demoEspressoCoffee[index].imageUrl,
            rating: demoEspressoCoffee[index].rating,
          ),
        );
      },
    );
  }
}
