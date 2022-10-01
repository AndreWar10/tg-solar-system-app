import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../presentation/widgets/errors/exception.dart';
import '../models/spacex_model.dart';
import '../utils/apis.dart';

abstract class SpacexRemoteDataSource {
  Future<List<SpacexModel>> getSpacex();
}

class SpacexRemoteDataSourceImpl implements SpacexRemoteDataSource {
  final http.Client client;
  SpacexRemoteDataSourceImpl({required this.client});

  @override
  Future<List<SpacexModel>> getSpacex() async {
    var response = await client.get(
      Uri.parse(API.spacex),
    );

    if (response.statusCode == 200) {
      // ignore: avoid_print
      print(response.body);
      var decodedResponse = await json.decode(response.body);
      List<SpacexModel> spacex = [
        for (final e in decodedResponse) SpacexModel.fromJson(e)
      ];
      return spacex;
    } else {
      throw ServerException();
    }
  }
}
