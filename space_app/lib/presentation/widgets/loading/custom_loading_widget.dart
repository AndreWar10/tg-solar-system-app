import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: 500,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitWave(
              //SpinKitWave
              //SpinKitFoldingCube
              //SpinKitCubeGrid
              //SpinKitFadingFour
              //SpinKitDoubleBounce
              size: 50,
              itemBuilder: (_, int index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: index.isEven
                        ? Color(0xff0038a8)
                        : Colors.deepPurpleAccent,
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            Text(
              'Carregando dados',
              style: GoogleFonts.montserrat
              (color: Colors.black, fontSize: 16),
            ),
          ],
        )),
      ),
    );
  }
}
