// To parse this JSON data, do
//
//     final exoplanetModel = exoplanetModelFromJson(jsonString);

// ignore_for_file: prefer_if_null_operators, prefer_null_aware_operators

import 'dart:convert';

import '../../domain/entities/exoplanet_entitie.dart';

List<ExoplanetModel> exoplanetModelFromJson(String str) =>
    List<ExoplanetModel>.from(
        json.decode(str).map((x) => ExoplanetModel.fromJson(x)));

String exoplanetModelToJson(List<ExoplanetModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ExoplanetModel {
  ExoplanetModel({
    required this.star,
    required this.id,
    required this.name,
    required this.habitability,
     this.semiMajorAxis,
     this.orbitalPeriod,
     this.mass,
     this.radius,
     this.density,
    required this.v,
  });

  List<String> star;
  String id;
  String name;
  bool habitability;
  double? semiMajorAxis;
  double? orbitalPeriod;
  double? mass;
  double? radius;
  double? density;
  int v;

  factory ExoplanetModel.fromJson(Map<String, dynamic> json) => ExoplanetModel(
        star: List<String>.from(json["star"].map((x) => x)),
        id: json["_id"],
        name: json["name"],
        habitability: json["habitability"],
        semiMajorAxis: json["semiMajorAxis"] == null
            ? null
            : json["semiMajorAxis"].toDouble(),
        orbitalPeriod: json["orbitalPeriod"] == null
            ? null
            : json["orbitalPeriod"].toDouble(),
        mass: json["mass"] == null ? null : json["mass"].toDouble(),
        radius: json["radius"] == null ? null : json["radius"].toDouble(),
        density: json["density"] == null ? null : json["density"].toDouble(),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "star": List<dynamic>.from(star.map((x) => x)),
        "_id": id,
        "name": name,
        "habitability": habitability,
        "semiMajorAxis": semiMajorAxis == null ? null : semiMajorAxis,
        "orbitalPeriod": orbitalPeriod == null ? null : orbitalPeriod,
        "mass": mass == null ? null : mass,
        "radius": radius == null ? null : radius,
        "density": density == null ? null : density,
        "__v": v,
      };

  ExoplanetEntitie toEntity() => ExoplanetEntitie(
        star: star,
        id: id,
        name: name,
        habitability: habitability,
        semiMajorAxis: semiMajorAxis,
        orbitalPeriod: orbitalPeriod,
        mass: mass,
        radius: radius,
        density: density,
        v: v,
      );

  List<Object?> get props => [
        star,
        id,
        name,
        habitability,
        semiMajorAxis,
        orbitalPeriod,
        mass,
        radius,
        density,
        v
      ];
}
