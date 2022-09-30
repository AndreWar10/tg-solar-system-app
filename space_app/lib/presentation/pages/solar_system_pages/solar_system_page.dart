import 'package:flutter/material.dart';
import '../../bloc/solar_system_bloc/solar_system_state.dart';
import '../../widgets/solar_system_widgets/solar_system_gridview_widget.dart';
import '../../widgets/solar_system_widgets/solar_system_input_widget.dart';
import '../../widgets/solar_system_widgets/solar_system_subtitle_widget.dart';
import '../../widgets/solar_system_widgets/solar_system_title_widget.dart';

class SolarSystemPage extends StatelessWidget {
  const SolarSystemPage({
    Key? key, required this.state,
  }) :  super(key: key);

  final String _defaultBackgroundImage = 'assets/background/background50.png';
  final SolarSystemHasData state;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sistema Solar'),centerTitle: true,),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_defaultBackgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              // Padding(
              //   padding: const EdgeInsets.only(left: 12, right: 12),
              //   child: LogoutButtonWidget(),
              // ),
              //SizedBox(height: 30),
              SolarSystemTitleWidget(),
              SizedBox(
                height: 5,
              ),
              SolarSystemSubitleWidget(),
              SizedBox(height: 40),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: SolarSystemInputWidget(),
                  ),
                  SizedBox(height: 40),
                  GridViewSolarSystem(state: state)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
