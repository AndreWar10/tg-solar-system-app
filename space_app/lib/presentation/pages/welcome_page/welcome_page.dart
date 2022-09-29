import 'package:flutter/material.dart';
import '../../widgets/welcome_widgets/welcome_astronaut_widget.dart';
import '../../widgets/welcome_widgets/welcome_button_widget.dart';
import '../../widgets/welcome_widgets/welcome_planet_widget.dart';
import '../../widgets/welcome_widgets/welcome_text_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final String _defaultBackground = "assets/background/background50.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_defaultBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 18.0, right: 18, left: 18, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              WelcomePlanetWidget(),
              WelcomeAstronautWidget(),
              Spacer(),
              WelcomeTextWidget(),
              WelcomeButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
