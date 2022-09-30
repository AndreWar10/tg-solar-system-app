import 'package:flutter/material.dart';
import '../../../domain/entities/exoplanet_entitie.dart';
import 'exoplanet_item_widget.dart';

class ListViewExoplanet extends StatelessWidget {
  const ListViewExoplanet({
    Key? key,
    required this.exoplanet,
    required this.viewHabitable,
    required this.viewNoHabitable,
  }) : super(key: key);

  final List<ExoplanetEntitie> exoplanet;
  final bool viewHabitable;
  final bool viewNoHabitable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: viewHabitable == false
              ? Text('Exoplanetas Habitáveis')
              : viewNoHabitable == false
                  ? Text('Exoplanetas Não Habitáveis')
                  : Text('Todos Exoplanetas'),
          centerTitle: true),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/background50.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  viewHabitable == false
                      ? ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: exoplanet.length,
                          itemBuilder: (BuildContext context, int index) {
                            return exoplanet[index].habitability == true
                                ? ItemExoplanetWidget(
                                    exoplanet: exoplanet[index])
                                : Padding(
                                    padding: EdgeInsets.all(0),
                                  );
                          },
                        )
                      : viewNoHabitable == false
                          ? ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: exoplanet.length,
                              itemBuilder: (BuildContext context, int index) {
                                return exoplanet[index].habitability == false
                                    ? ItemExoplanetWidget(
                                        exoplanet: exoplanet[index])
                                    : Padding(
                                        padding: EdgeInsets.all(0),
                                      );
                              },
                            )
                          : ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: exoplanet.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ItemExoplanetWidget(
                                    exoplanet: exoplanet[index]);
                              },
                            )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
