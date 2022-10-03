import 'package:flutter/material.dart';
import '../../../domain/entities/spacex_entitie.dart';
import '../../pages/spacex_page/spacex_detail_page.dart';
import 'spacex_date_widget.dart';
import 'spacex_image_widget.dart';
import 'spacex_mission_failure_widget.dart';
import 'spacex_mission_name_widget.dart';
import 'spacex_mission_sucess_widget.dart';

class SpacexItemWidget extends StatelessWidget {
  const SpacexItemWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => SpacexDetailPage(spacex: spacex,),
        ),
      ),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF282A2E),
               borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 12, right: 12, bottom: 8),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SpacexDateWidget(spacex: spacex),
                    SizedBox(height: 8),
                    SpacexMissionNameWidget(spacex: spacex),
                    SizedBox(height: 8),
                    spacex.launchSuccess == true
                        ? SpacexMissionSucessWidget()
                        : SpacexMissionFailureWidget(),
                  ],
                ),
                SpacexImageWidget(spacex: spacex),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
