import 'package:flutter/material.dart';
//Models
import 'package:camping_app/models/place.dart';
//Routes
import 'package:camping_app/views/core/place/place_page.dart';

class SearchPlaceCard extends StatelessWidget {
  final Place place;
  const SearchPlaceCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlacePage(place: place),
          ),
        );
      },
      child: SizedBox(
        height: 100.0,
        width: 100.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Image.asset(
            place.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
