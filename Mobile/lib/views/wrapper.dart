import 'package:flutter/material.dart';
//Routes
import 'package:camping_app/views/auth/signin_page.dart';
import 'package:camping_app/views/core/landing_page.dart';

class WrapperPage extends StatelessWidget {
  const WrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool loggedIn = false;
    if(loggedIn){
      return const LandingPage();
    } else {
      return const SignInPage();
    }
  }
}
