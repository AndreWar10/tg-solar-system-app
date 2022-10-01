import 'package:flutter/material.dart';
import '../../../domain/entities/spacex_entitie.dart';
import '../../widgets/spacex_widgets/spacex_listview_widget.dart';

class SpacexPage extends StatelessWidget {
  const SpacexPage({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final List<SpacexEntitie> spacex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lançamentos'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 20),
            child: Column(
              children: [
                SpacexListViewWidget(spacex: spacex),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


