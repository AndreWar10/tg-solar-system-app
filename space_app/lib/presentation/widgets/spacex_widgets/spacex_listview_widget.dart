import 'package:flutter/material.dart';
import 'package:space_app/presentation/widgets/spacex_widgets/spacex_item_widget.dart';

import '../../../domain/entities/spacex_entitie.dart';

class SpacexListViewWidget extends StatelessWidget {
  const SpacexListViewWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final List<SpacexEntitie> spacex;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: spacex.length,
      itemBuilder: (BuildContext context, int index) {
        return SpacexItemWidget(spacex: spacex[index]);
      },
    );
  }
}

