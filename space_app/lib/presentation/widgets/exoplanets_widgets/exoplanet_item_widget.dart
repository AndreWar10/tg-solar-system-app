import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../../domain/entities/exoplanet_entitie.dart';
import '../../pages/exoplanet_page/exoplanet_detail_page.dart';

class ItemExoplanetWidget extends StatelessWidget {
  const ItemExoplanetWidget({Key? key, required this.exoplanet})
      : super(key: key);

  final ExoplanetEntitie exoplanet;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 7.0, left: 7),
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetailExoplanetPage(
                exoplanet: exoplanet,
              ),
            ),
          ),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.92,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(4)),
            child: ListTile(
              title: Text(exoplanet.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: exoplanet.habitability == true
                  ? Text(
                      'HABITÁVEL',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    )
                  : Text('NÃO HABITÁVEL',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold)),
              //leading: Icon(Icons.pla),
              trailing: IconButton(
                icon: Icon(Icons.share),
                color: Color.fromARGB(255, 109, 108, 108),
                onPressed: () async {
                  var name = exoplanet.name;
                  var habitavel = exoplanet.habitability == true
                      ? 'habitável'
                      : 'não habitável';
                  await Share.share(
                      'Exoplaneta $name, é um exoplaneta $habitavel');
                },
              ),
            ),
          ),
        ));
  }
}

