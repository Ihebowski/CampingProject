import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:camping_app/views/constants/colors.dart';
//Services
import 'package:camping_app/services/place_service.dart';
//Routes
import 'package:camping_app/views/core/home/place_card.dart';

class PlaceView extends StatefulWidget {
  const PlaceView({super.key});

  @override
  State<PlaceView> createState() => _PlaceViewState();
}

class _PlaceViewState extends State<PlaceView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return SizedBox(
      height: 325.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discover",
                style: GoogleFonts.roboto(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
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
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                controller: tabController,
                splashFactory: NoSplash.splashFactory,
                splashBorderRadius: BorderRadius.circular(25.0),
                labelColor: primaryColor,
                unselectedLabelColor: secondaryColor,
                isScrollable: true,
                dividerColor: Colors.transparent,
                tabAlignment: TabAlignment.start,
                indicatorColor: primaryColor,
                labelStyle: GoogleFonts.roboto(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: GoogleFonts.roboto(
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
                tabs: const [
                  Tab(text: "Popular"),
                  Tab(text: "Most Visited"),
                  Tab(text: "Featured"),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Container(
                  child: ListView.separated(
                    separatorBuilder: (context, _) =>
                        const SizedBox(width: 10.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: placeList.length,
                    itemBuilder: (context, index) => Center(
                      child: PlaceCard(place: placeList[index]),
                    ),
                  ),
                ),
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
