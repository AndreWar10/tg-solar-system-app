import 'dart:convert';


import '../../domain/entities/solar_system_entitie.dart';

List<SolarSystemModel> systemSolarModelFromJson(String str) =>
    List<SolarSystemModel>.from(
        json.decode(str).map((x) => SolarSystemModel.fromJson(x)));

String systemSolarModelToJson(List<SolarSystemModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SolarSystemModel {
  SolarSystemModel({
    required this.id,
    required this.name,
    required this.type,
    required this.resume,
    required this.introduction,
    required this.images,
    required this.searchTags,
    required this.features,
    required this.geography,
  });

  String id;
  String name;
  String type;
  String resume;
  String introduction;
  Images images;
  List<String> searchTags;
  Features features;
  String geography;

  factory SolarSystemModel.fromJson(Map<String, dynamic> json) =>
      SolarSystemModel(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        resume: json["resume"],
        introduction: json["introduction"],
        images: Images.fromJson(json["images"]),
        searchTags: List<String>.from(json["searchTags"].map((x) => x)),
        features: Features.fromJson(json["features"]),
        geography: json["geography"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "resume": resume,
        "introduction": introduction,
        "images": images.toJson(),
        "searchTags": List<dynamic>.from(searchTags.map((x) => x)),
        "features": features.toJson(),
        "geography": geography,
      };

  SystemSolarEntitie toEntity() => SystemSolarEntitie(
      id: id,
      name: name,
      type: type,
      resume: resume,
      introduction: introduction,
      images: images,
      searchTags: searchTags,
      features: features,
      geography: geography);

  List<Object?> get props => [
        id,
        name,
        type,
        resume,
        introduction,
        images,
        searchTags,
        features,
        geography
      ];

      
}

class Features {
  Features({
    required this.orbitalPeriod,
    required this.orbitalSpeed,
    required this.rotationDuration,
    required this.radius,
    required this.diameter,
    required this.sunDistance,
    required this.oneWayLightToTheSun,
    required this.satellites,
    required this.temperature,
    required this.gravity,
  });

  List<String> orbitalPeriod;
  String orbitalSpeed;
  String rotationDuration;
  String radius;
  String diameter;
  String sunDistance;
  String oneWayLightToTheSun;
  Satellites satellites;
  String temperature;
  String gravity;

  factory Features.fromJson(Map<String, dynamic> json) => Features(
        orbitalPeriod: List<String>.from(json["orbitalPeriod"].map((x) => x)),
        orbitalSpeed: json["orbitalSpeed"],
        rotationDuration: json["rotationDuration"],
        radius: json["radius"],
        diameter: json["Diameter"],
        sunDistance: json["sunDistance"],
        oneWayLightToTheSun: json["oneWayLightToTheSun"],
        satellites: Satellites.fromJson(json["satellites"]),
        temperature: json["temperature"],
        gravity: json["gravity"],
      );

  Map<String, dynamic> toJson() => {
        "orbitalPeriod": List<dynamic>.from(orbitalPeriod.map((x) => x)),
        "orbitalSpeed": orbitalSpeed,
        "rotationDuration": rotationDuration,
        "radius": radius,
        "Diameter": diameter,
        "sunDistance": sunDistance,
        "oneWayLightToTheSun": oneWayLightToTheSun,
        "satellites": satellites.toJson(),
        "temperature": temperature,
        "gravity": gravity,
      };
}

class Satellites {
  Satellites({
    required this.number,
    required this.names,
  });

  int number;
  List<String> names;

  factory Satellites.fromJson(Map<String, dynamic> json) => Satellites(
        number: json["number"],
        names: List<String>.from(json["names"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "names": List<dynamic>.from(names.map((x) => x)),
      };
}

class Images {
  Images({
    required this.svg,
    required this.png,
  });

  String svg;
  String png;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        svg: json["svg"],
        png: json["png"],
      );

  Map<String, dynamic> toJson() => {
        "svg": svg,
        "png": png,
      };
}
