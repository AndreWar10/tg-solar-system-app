
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:space_app/presentation/pages/welcome_page/welcome_page.dart';

import '../../pages/home_page/home_page.dart';

class HomeStreamBuilder extends StatelessWidget {
  const HomeStreamBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snaphot) {
        if (snaphot.hasData) {
          return HomePage();
        }
        return WelcomePage();
      },
    );
  }
}