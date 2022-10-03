import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../../../domain/entities/spacex_entitie.dart';

class ContainerCimaWidget extends StatelessWidget {
  const ContainerCimaWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: Color(0xFF2C2E2F)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                // Text('#${spacex.flightNumber}'),
                //Spacer(),
                Expanded(
                  child: Center(
                    child: Text(
                      spacex.missionName!,
                      style: GoogleFonts.montserrat(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                //Spacer(),
                //Icon(Icons.close)
              ],
            ),
            Text(
              DateFormat('MMMM dd,  yyyy').format(spacex.launchDateUtc!),
              style: GoogleFonts.montserrat(color: Colors.deepPurpleAccent),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: spacex.links!.missionPatch != null
                  ? Image.network(
                      spacex.links!.missionPatch!,
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      loadingBuilder: (_, child, progress) {
                      if (progress == null) return child;
                      return CircularProgressIndicator
                          .adaptive(); //adaptative muda de acordo com a plataforma android/ios,etc
                    },
                      //alignment: Alignment.centerRight,
                    )
                  : Image.asset(
                      //spacex.links!.missionPatchSmall!,
                      'assets/planets/Terra.png',
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      //alignment: Alignment.centerRight,
                    ),
            )
          ],
        ),
      ),
    );
  }
}
