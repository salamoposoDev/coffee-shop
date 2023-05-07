import 'package:coffee_shop/config/app_colors.dart';
import 'package:coffee_shop/home/widgets/organism/cappuccino_list.dart';
import 'package:coffee_shop/home/widgets/organism/custom_tabbar.dart';
import 'package:coffee_shop/home/widgets/organism/discount_banner_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.brownlight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'lib/assets/icons/profile.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.room,
                          size: 16,
                          color: AppColors.greenDark,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Makassar, ',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Indonesia',
                          style: GoogleFonts.poppins(
                            color: Colors.grey.shade700,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.notifications_outlined),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Good Morning,',
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextField(
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Search Coffee...',
                      border: InputBorder.none,
                      fillColor: Colors.grey.shade600,
                      prefixIcon: const Icon(
                        Icons.search,
                      ),
                      suffixIcon: Container(
                        decoration: const BoxDecoration(
                          color: AppColors.brownlight,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.tune,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Categories',
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 16),
                CustomTabbar(),
                const SizedBox(height: 16),
                Text(
                  'Special Offer 🔥',
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 16),
                DiscountBannerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
