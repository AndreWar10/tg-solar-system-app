import 'package:flutter/material.dart';
import 'package:space_app/domain/entities/spacex_entitie.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../widgets/spacex_widgets/detail_spacex_widgets/container_baixo_widget.dart';
import '../../widgets/spacex_widgets/detail_spacex_widgets/container_cima_widget.dart';
import '../../widgets/spacex_widgets/detail_spacex_widgets/mission_sucess_widget.dart';

class SpacexDetailPage extends StatelessWidget {
  const SpacexDetailPage({Key? key, required this.spacex}) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ContainerCimaWidget(spacex: spacex),
          ContainerBaixoWidget(spacex: spacex),
          MissionSucessWidget(spacex: spacex),
          Padding(
            padding: const EdgeInsets.only(bottom: 440, right: 285),
            child: Positioned(
              child: GestureDetector(
                onTap: () async {
                  final Uri url = Uri.parse(spacex.links!.videoLink!);
                  await launchUrl(url);
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xFF1C1E1F),
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(Icons.play_arrow, color: Colors.white, size: 50),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 440, left: 285),
            child: Positioned(
              child: GestureDetector(
                onTap: () async {
                  final Uri url = Uri.parse(spacex.links!.articleLink!);
                  await launchUrl(url);
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xFF1C1E1F),
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(Icons.rocket,color: Colors.white, size: 50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
