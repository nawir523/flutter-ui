import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/widgets/app_bar_home.dart';
import 'package:flutter_application_1/features/home/widgets/category_home.dart';
import 'package:flutter_application_1/features/home/widgets/recommended_furniture_home.dart';
import 'package:flutter_application_1/features/home/widgets/bottom_navigation_bar_home.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: const Color(0xFFF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Discover the most modern furniture',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color(0xFF4A4543),
                      letterSpacing: 0.5,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              const SizedBox(
                height: 45,
                child: CategoryHome(),
              ),
              const SizedBox(height: 20),
              SizedBox(
                child: Text(
                  "Recommended Furnitures",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFF4A4543),
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const SizedBox(
                height: 510,
                child: RecommendedFurnituresHome(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbarHome(),
    );
  }
}
