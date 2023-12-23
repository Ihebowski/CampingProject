import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:camping_app/views/constants/colors.dart';

class BestView extends StatelessWidget {
  const BestView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommendations",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize:26.0,
                  color: text1Color,
                ),
              ),
              Text(
                "See More",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                  color: text1Color,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          Row(
            children: [
              Container(
                height: 225.0,
                width: 150.0,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
