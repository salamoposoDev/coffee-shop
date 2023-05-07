import 'dart:ui';

import 'package:coffee_shop/config/app_colors.dart';
import 'package:coffee_shop/home/widgets/atoms/rating_atom.dart';
import 'package:coffee_shop/home/widgets/molecules/custom_appbar.dart';
import 'package:coffee_shop/home/widgets/organism/tabbar_size.dart';
import 'package:coffee_shop/models/coffee_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CoffeeDetailScreen extends ConsumerWidget {
  const CoffeeDetailScreen({super.key, required this.coffeeModel});
  final CoffeeModel coffeeModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coffeeSize = ref.watch(coffeeSizeProvider);
    final currencyFormat = NumberFormat('#,##0', 'ID');
    final size = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          SizedBox(
            width: size.width * 1,
            height: size.height * 1,
            child: Stack(
              children: [
                SizedBox(
                  width: size.width * 1,
                  height: size.height * 0.50,
                  child: ClipRRect(
                    child: Hero(
                      tag: coffeeModel.imageUrl,
                      child: Image.network(
                        coffeeModel.imageUrl,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: height),
                    const CustomAppbar(),
                  ],
                ),
                Positioned(
                  top: size.height * 0.37,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                      child: Container(
                        height: 100,
                        width: size.width * 1,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.4),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  coffeeModel.name,
                                  style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                RatingAtom(
                                  rating: coffeeModel.rating,
                                  size: 'lg',
                                ),
                              ],
                            ),
                            Text(
                              'With ${coffeeModel.topping}',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: size.height * 0.55,
                    width: size.width * 1,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 16),
                              child: IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'lib/assets/icons/cappuccino.png',
                                          scale: 4,
                                          color: AppColors.brownlight,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          'Coffee',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const VerticalDivider(
                                      thickness: 2,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'lib/assets/icons/cold.png',
                                          scale: 4,
                                          color: AppColors.brownlight,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          'Chocolate',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const VerticalDivider(
                                      thickness: 2,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'lib/assets/icons/espresso.png',
                                          scale: 4,
                                          color: AppColors.brownlight,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          ' Medium Roasted',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Coffee Size',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 16),
                          TabbarSize(),
                          const SizedBox(height: 16),
                          Text(
                            'About',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            coffeeModel.description,
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                            strutStyle: const StrutStyle(height: 1.5),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  left: 0,
                  right: 0,
                  child: InkWell(
                    onTap: () {},
                    splashColor: AppColors.brownlight,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16, vertical: coffeeSize != 0 ? 8 : 16),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: AppColors.greenDark,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Add to Cart',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            VerticalDivider(
                              thickness: 2,
                              width: 2,
                              color: Colors.grey.shade500,
                            ),
                            Column(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Rp. ',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white70,
                                        ),
                                      ),
                                      TextSpan(
                                        text: currencyFormat.format(
                                            coffeeModel.price + coffeeSize),
                                      ),
                                    ],
                                  ),
                                ),
                                if (coffeeSize != 0)
                                  Text(
                                    '+ Rp ${currencyFormat.format(coffeeSize)}',
                                    style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white70,
                                    ),
                                  )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
