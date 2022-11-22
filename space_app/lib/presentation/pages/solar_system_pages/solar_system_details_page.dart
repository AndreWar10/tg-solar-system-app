import 'package:flutter/material.dart';
import '../../widgets/solar_system_widgets/details_page/container_solar_system_details.dart';
import '../../widgets/solar_system_widgets/details_page/detail_app_bar_widget.dart';
import '../../widgets/solar_system_widgets/details_page/detail_cabecalho_widget.dart';
import '../../widgets/solar_system_widgets/details_page/detail_overview_widget.dart';
import '../../widgets/solar_system_widgets/details_page/detail_play_video_widget.dart';
import '../../widgets/solar_system_widgets/details_page/detail_separation.dart';
import '../../widgets/solar_system_widgets/details_page/detail_subtitle_widget.dart';
import '../../widgets/solar_system_widgets/details_page/detail_tecnical_information_widget.dart';
import '../../widgets/solar_system_widgets/details_page/detail_texto_widget.dart';
import '../../widgets/solar_system_widgets/details_page/detail_title_and_share.dart';

class DetailSolarSystemPage extends StatelessWidget {
  const DetailSolarSystemPage({
    Key? key,
    required this.scrollController,
    required this.widget,
    required this.isOnTop,
  }) : super(key: key);

  final ScrollController scrollController;
  final DetailSolarSystemContainer widget;
  final bool isOnTop;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      physics: ClampingScrollPhysics(),
      slivers: [
        DetailAppBarWidget(planet: widget.planet, isOnTop: isOnTop),
        DetailCabecalhoWidget(planet: widget.planet),
        SliverToBoxAdapter(
          child: Container(
      color: widget.planet.baseColor,
            child: Stack(
              children: [
                //DetailColorBackgroundWidget(widget: widget),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: SingleChildScrollView(
                      physics:NeverScrollableScrollPhysics() ,
                      child: Column(
                        children: [
                          DetailSeparationWidget(),
                          SizedBox(height: 25),
                          DetailOverviewWidget(),
                          SizedBox(height: 20),
                          DetailTitleAndShare(widget: widget),
                          SizedBox(height: 10),
                          DetailSubtitleWidget(widget: widget),
                          SizedBox(height: 10),
                          DetailTextoWidget(widget: widget),
                          SizedBox(height: 20),
                          DetailTecnicalInformationWidget(widget: widget),
                          SizedBox(height: 25),
                          DetailPlayVideoWidget(widget: widget),
                          
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
