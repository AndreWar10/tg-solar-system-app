import 'dart:convert';

import '../../presentation/widgets/errors/exception.dart';
import '../models/system_solar_model.dart';
import '../utils/apis.dart';
import 'package:http/http.dart' as http;

abstract class SolarSystemRemoteDataSource {
  Future<List<SolarSystemModel>> getSystemSolar();
}

class SolarSystemRemoteDataSourceImpl implements SolarSystemRemoteDataSource {
  final http.Client client;
  SolarSystemRemoteDataSourceImpl({required this.client});

  @override
  Future<List<SolarSystemModel>> getSystemSolar() async {
    var response = await client.get(
      Uri.parse(API.solarSystem),
    );

    if (response.statusCode == 200) {
      // ignore: avoid_print
      print(response.body);
      var decodedResponse = await json.decode(response.body);
      List<SolarSystemModel> solarSystem = [
        for (final e in decodedResponse) SolarSystemModel.fromJson(e)
      ];
      return solarSystem;
    } else {
      throw ServerException();
    }
  }
}
