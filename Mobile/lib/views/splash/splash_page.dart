import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:camping_app/views/constants/colors.dart';
//Routes
import 'package:camping_app/views/wrapper.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                child: PageView(
                  controller: pageController,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Explore",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0,
                            color: text1Color,
                          ),
                        ),
                        Image.asset(
                          "assets/images/splash/explore.jpg",
                        ),
                        Text(
                          "Unlock the world's wonders at your fingertips. Explore, experience, and embrace the extraordinary with our app.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            color: text1Color,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Visit",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0,
                            color: text1Color,
                          ),
                        ),
                        Image.asset(
                          "assets/images/splash/visit.jpg",
                        ),
                        Text(
                          "Journey into the extraordinary. Explore new horizons and unforgettable destinations with our app – your gateway to a world of discovery.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            color: text1Color,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Review",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0,
                            color: text1Color,
                          ),
                        ),
                        Image.asset(
                          "assets/images/splash/review.jpg",
                        ),
                        Text(
                          "Empower your adventures. Explore, Rate, Review – Your insights, your guide to a world of unforgettable places.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            color: text1Color,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SizedBox(
                height: 60.0,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WrapperPage(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    elevation: const MaterialStatePropertyAll<double>(0.0),
                    backgroundColor: const MaterialStatePropertyAll<Color>(itemBackgroundColor),
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: text1Color,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
