import 'package:flutter/material.dart';

import '../../../domain/entities/spacex_entitie.dart';

class SpacexImageWidget extends StatelessWidget {
  const SpacexImageWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          spacex.links!.missionPatchSmall != null
              ? Image.network(
                  spacex.links!.missionPatchSmall!,
                  width: 60,
                  height: 60,
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
                  width: 60,
                  height: 60,
                  //alignment: Alignment.centerRight,
                )
        ],
      ),
    );
  }
}
