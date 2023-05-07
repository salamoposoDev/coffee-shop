import 'package:coffee_shop/config/app_colors.dart';
import 'package:coffee_shop/home/widgets/atoms/rating_atom.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.text,
    required this.topping,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.tag,
    this.onAdd,
  });
  final String text;
  final String topping;
  final int price;
  final String imageUrl;
  final double rating;
  final String tag;
  final void Function()? onAdd;

  @override
  Widget build(BuildContext context) {
    final currencyFormat = NumberFormat('#,##0', 'ID');
    return Column(
      children: [
        Container(
          width: 150,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 130,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Hero(
                            tag: tag,
                            child: Image.network(
                              imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: 2,
                    right: 10,
                    child: RatingAtom(rating: rating),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                text,
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$topping',
                        style: GoogleFonts.poppins(
                          fontSize: 8,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Rp ${currencyFormat.format(price)}',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: onAdd,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: AppColors.greenDark,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.grey.shade100,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
