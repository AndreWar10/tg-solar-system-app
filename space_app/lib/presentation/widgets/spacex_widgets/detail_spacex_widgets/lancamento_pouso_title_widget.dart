import 'package:flutter/material.dart';
import 'container_baixo_title_widget.dart';

class LancamentoPousoTitleWidget extends StatelessWidget {
  const LancamentoPousoTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        ContainerBaixoTitleWidget(titulo: 'LANÇAMENTO'),
        Spacer(),
        ContainerBaixoTitleWidget(titulo: 'POUSO'),
      ],
    );
  }
}