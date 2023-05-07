import 'package:coffee_shop/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingAtom extends StatelessWidget {
  const RatingAtom({
    super.key,
    required this.rating,
    this.size = 'md',
  });

  final double rating;
  final String? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: _getPadding(size),
      decoration: BoxDecoration(
        color: AppColors.brownlight,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            size: 10,
            color: Colors.white,
          ),
          const SizedBox(width: 4),
          Text(
            rating.toString(),
            style: GoogleFonts.poppins(fontSize: 8, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

EdgeInsetsGeometry _getPadding(String? size) {
  double horizontal;
  double vertical;
  switch (size) {
    case 'lg':
      horizontal = 12;
      vertical = 6;
      break;
    case 'md':
      horizontal = 8;
      vertical = 4;
      break;

    default:
      horizontal = 0;
      vertical = 0;
  }
  return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
}
