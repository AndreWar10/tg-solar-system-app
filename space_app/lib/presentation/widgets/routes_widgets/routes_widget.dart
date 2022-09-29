import 'package:flutter/material.dart';
import '../../pages/login_page/login_page.dart';
import '../../pages/register_page/register_page.dart';
import '../../pages/splash_page/splash_page.dart';
import '../../pages/welcome_page/welcome_page.dart';

class RoutesWidget extends StatelessWidget {
  const RoutesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => SplashPage(),
        '/welcome': (_) => WelcomePage(),
        '/login': (_) => LoginPage(),
        '/register': (_) => RegisterPage(),
      },
    );
  }
}