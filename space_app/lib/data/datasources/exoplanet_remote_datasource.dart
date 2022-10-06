import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../presentation/widgets/errors/exception.dart';
import '../models/exoplanet_model.dart';
import '../utils/apis.dart';

abstract class ExoplanetRemoteDataSource {
  Future<List<ExoplanetModel>> getExoplanet();
}

class ExoplanetRemoteDataSourceImpl implements ExoplanetRemoteDataSource {
  final http.Client client;
  ExoplanetRemoteDataSourceImpl({required this.client});

  @override
  Future<List<ExoplanetModel>> getExoplanet() async {
    var response = await client.get(
      Uri.parse(API.exoplanet),
    );

    if (response.statusCode == 200) {
      // ignore: avoid_print
      print(response.body);
      var decodedResponse = await json.decode(response.body);
      List<ExoplanetModel> exoplanets = [
        for (final e in decodedResponse) ExoplanetModel.fromJson(e)
      ];
      return exoplanets;
    } else {
      throw ServerException();
    }
  }
}
