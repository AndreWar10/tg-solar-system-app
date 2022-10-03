import 'package:flutter/material.dart';
import 'container_baixo_title_widget.dart';

class FogueteCargaUtilWidget extends StatelessWidget {
  const FogueteCargaUtilWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        ContainerBaixoTitleWidget(titulo: 'FOGUETE'),
        Spacer(),
        ContainerBaixoTitleWidget(titulo: 'CARGA ÚTIL'),
      ],
    );
  }
}
