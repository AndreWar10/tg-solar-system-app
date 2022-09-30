import 'package:flutter/material.dart';

import '../../bloc/solar_system_bloc/solar_system_state.dart';
import 'solar_system_item_widget.dart';

class GridViewSolarSystem extends StatelessWidget {
  const GridViewSolarSystem({
    Key? key,
    required this.state,
  }) : super(key: key);

  final SolarSystemHasData state;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(), 
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 270, childAspectRatio: 6 / 9, mainAxisSpacing: 0.5),
      itemCount: state.solarSystem.length,
      itemBuilder: (BuildContext context, int index) {
        return SolarSystemItemWidget(
          index: index,
          planet: state.solarSystem[index],
        );
      },
    );
  }
}
