import 'package:flutter/material.dart';

import '../../../../domain/entities/solar_system_entitie.dart';
import '../../../pages/solar_system_pages/solar_system_details_page.dart';

class DetailSolarSystemContainer extends StatefulWidget {
  const DetailSolarSystemContainer({Key? key, required this.planet})
      : super(key: key);
  final SystemSolarEntitie planet;

  @override
  State<DetailSolarSystemContainer> createState() => _DetailSolarSystemContainerState();
}

class _DetailSolarSystemContainerState extends State<DetailSolarSystemContainer> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  bool isOnTop = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (notification) {
          setState(() {
            if (scrollController.position.pixels > 360) {
              isOnTop = false;
            } else if (scrollController.position.pixels <= 359) {
              isOnTop = true;
            }
          });
          return false;
        },
        child: DetailSolarSystemPage(scrollController: scrollController, widget: widget, isOnTop: isOnTop, ),
      ),
    );
  }
}