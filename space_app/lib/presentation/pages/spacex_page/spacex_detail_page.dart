import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/domain/entities/spacex_entitie.dart';
import '../../widgets/spacex_widgets/detail_spacex_widgets/containers/container_baixo_widget.dart';
import '../../widgets/spacex_widgets/detail_spacex_widgets/containers/container_cima_widget.dart';
import '../../widgets/spacex_widgets/detail_spacex_widgets/containers/link_widget.dart';
import '../../widgets/spacex_widgets/detail_spacex_widgets/containers/video_widget.dart';
import '../../widgets/spacex_widgets/detail_spacex_widgets/mission_sucess_widget.dart';

class SpacexDetailPage extends StatelessWidget {
  const SpacexDetailPage({Key? key, required this.spacex}) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(spacex.missionName!,style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),), centerTitle: true),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ContainerCimaWidget(spacex: spacex),
          ContainerBaixoWidget(spacex: spacex),
          MissionSucessWidget(spacex: spacex),
          VideoWidget(spacex: spacex),
          LinkWidget(spacex: spacex),
        ],
      ),
    );
  }
}
