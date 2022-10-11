import 'package:flutter/material.dart';

import '../../widgets/splash_widgets/lottie_animation_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {

  final String _defaultRoute = "/authenticated";
  

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 6))
    .then((_) => Navigator.of(context).pushReplacementNamed(_defaultRoute));
  }

  @override
  Widget build(BuildContext context) => LottieAnimationWidget();
}

