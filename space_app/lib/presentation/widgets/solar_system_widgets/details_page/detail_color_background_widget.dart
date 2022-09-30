import 'package:flutter/material.dart';

import 'container_solar_system_details.dart';

class DetailColorBackgroundWidget extends StatelessWidget {
  const DetailColorBackgroundWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailSolarSystemContainer widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.planet.baseColor,
    );
  }
}