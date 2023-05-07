
import 'package:coffee_shop/home/widgets/molecules/discount_banner.dart';
import 'package:flutter/material.dart';

class DiscountBannerList extends StatelessWidget {
  DiscountBannerList({super.key});

  final List<Map<String, dynamic>> discountItem = [
    {
      'title': 'Wake Up and Smell the Savings!',
      'description':
          'Craving a delicious cup of coffee? Head to our coffee shop now and enjoy our exclusive discount offer.',
      'imageUrl':
          'https://images.pexels.com/photos/14982147/pexels-photo-14982147.jpeg?auto=compress&cs=tinysrgb&w=800',
    },
    {
      'title': 'Buy 2 Get 3',
      'description':
          'Get tree ice flavoured cappuccino for every two items pusrcased',
      'imageUrl':
          'https://images.pexels.com/photos/16494009/pexels-photo-16494009.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 2,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: DiscountBanner(
              title: discountItem[index]['title'],
              description: discountItem[index]['description'],
              imageUrl: discountItem[index]['imageUrl'],
            ),
          );
        },
      ),
    );
  }
}
