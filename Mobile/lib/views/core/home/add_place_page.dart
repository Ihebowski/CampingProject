import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:camping_app/views/constants/colors.dart';

class AddPlacePage extends StatelessWidget {
  const AddPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appBackgroundColor,
            surfaceTintColor: Colors.transparent,
            automaticallyImplyLeading: false,
            floating: true,
            centerTitle: true,
            title: const Text(
              "Add",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 22.0,
                color: text1Color,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                FluentIcons.arrow_left_32_regular,
                color: text1Color,
                size: 28.0,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
