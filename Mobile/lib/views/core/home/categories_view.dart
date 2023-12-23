import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:camping_app/views/constants/colors.dart';
//Services
import 'package:camping_app/services/category_service.dart';
//Routes
import 'package:camping_app/views/core/home/category_card.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175.0,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
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
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, _) => const SizedBox(width: 7.5),
              scrollDirection: Axis.horizontal,
              itemCount: categoryList.length,
              itemBuilder: (context, index) => CategoryCard(
                title: categoryList[index].title,
                path: categoryList[index].path,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
