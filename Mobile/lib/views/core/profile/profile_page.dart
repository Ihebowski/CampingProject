import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:camping_app/views/constants/colors.dart';
//Routes
import 'package:camping_app/views/core/profile/edit_profile_view.dart';
import 'package:camping_app/views/core/profile/my_places_view.dart';
import 'package:camping_app/views/core/profile/settings_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: appBackgroundColor,
            surfaceTintColor: Colors.transparent,
            centerTitle: true,
            pinned: true,
            title: Text(
              "Profile",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 22.0,
                color: text1Color,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 15.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 15.0),
                  Container(
                    height: 95.0,
                    width: 95.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: itemBackgroundColor,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    "Iheb Barrah",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 22.0,
                      color: text1Color,
                    ),
                  ),
                  Text(
                    "@Ihebowski",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      color: text2Color,
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  const Divider(color: itemBackgroundColor),
                  const SizedBox(height: 25.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return editProfileView();
                              },
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(FluentIcons.person_edit_24_filled),
                                  const SizedBox(width: 20.0),
                                  Text(
                                    "Edit Profile",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.0,
                                      color: text1Color,
                                    ),
                                  ),
                                ],
                              ),
                              const Icon(
                                FluentIcons.chevron_right_32_filled,
                                color: secondaryColor,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return myPlaceProfileView();
                              },
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                      FluentIcons.location_arrow_24_filled),
                                  const SizedBox(width: 20.0),
                                  Text(
                                    "My Places",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.0,
                                      color: text1Color,
                                    ),
                                  ),
                                ],
                              ),
                              const Icon(
                                FluentIcons.chevron_right_32_filled,
                                color: secondaryColor,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return settingsView();
                              },
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(FluentIcons.settings_24_filled),
                                  const SizedBox(width: 20.0),
                                  Text(
                                    "Settings",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.0,
                                      color: text1Color,
                                    ),
                                  ),
                                ],
                              ),
                              const Icon(
                                FluentIcons.chevron_right_32_filled,
                                color: secondaryColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  const Divider(color: itemBackgroundColor),
                  const SizedBox(height: 25.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                    FluentIcons.local_language_24_filled),
                                const SizedBox(width: 20.0),
                                Text(
                                  "Language",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18.0,
                                    color: text1Color,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              FluentIcons.chevron_right_32_filled,
                              color: secondaryColor,
                            ),
                          ],
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(FluentIcons
                                    .chat_bubbles_question_24_filled),
                                const SizedBox(width: 20.0),
                                Text(
                                  "FAQs",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18.0,
                                    color: text1Color,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              FluentIcons.chevron_right_32_filled,
                              color: secondaryColor,
                            ),
                          ],
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                    FluentIcons.person_feedback_24_filled),
                                const SizedBox(width: 20.0),
                                Text(
                                  "Rate Us",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18.0,
                                    color: text1Color,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              FluentIcons.chevron_right_32_filled,
                              color: secondaryColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  const Divider(color: itemBackgroundColor),
                  const SizedBox(height: 25.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  FluentIcons.arrow_enter_20_filled,
                                  color: accentColor,
                                ),
                                const SizedBox(width: 20.0),
                                Text(
                                  "Logout",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18.0,
                                    color: accentColor,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              FluentIcons.chevron_right_32_filled,
                              color: accentColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
