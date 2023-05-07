import 'package:coffee_shop/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.text,
    this.icon = '',
    required this.isSelected,
    required this.duration,
  });
  final String text;
  final String? icon;
  final bool isSelected;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: duration),
      curve: Curves.fastOutSlowIn,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: isSelected == true ? AppColors.greenDark : Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon!.isNotEmpty)
            Image.asset(
              icon!,
              height: 20,
              color: isSelected == true ? Colors.white : Colors.grey.shade800,
            ),
          if (icon!.isNotEmpty) const SizedBox(width: 8),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: isSelected == true ? Colors.white : Colors.grey.shade800,
            ),
          ),
        ],
      ),
    );
  }
}
