// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

import 'package:space_app/domain/entities/news_entitie.dart';

List<NewsModel> newsModelFromJson(String str) =>
    List<NewsModel>.from(json.decode(str).map((x) => NewsModel.fromJson(x)));

String newsModelToJson(List<NewsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NewsModel {
  NewsModel({
    required this.id,
    required this.title,
    required this.url,
    required this.imageUrl,
    required this.newsSite,
    required this.summary,
    required this.publishedAt,
    required this.updatedAt,
    required this.featured,
    required this.launches,
    required this.events,
  });

  int id;
  String title;
  String url;
  String imageUrl;
  String newsSite;
  String summary;
  DateTime publishedAt;
  DateTime updatedAt;
  bool featured;
  List<Launch> launches;
  List<Event> events;

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        id: json["id"],
        title: json["title"],
        url: json["url"],
        imageUrl: json["imageUrl"],
        newsSite: json["newsSite"],
        summary: json["summary"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        featured: json["featured"],
        launches:
            List<Launch>.from(json["launches"].map((x) => Launch.fromJson(x))),
        events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "url": url,
        "imageUrl": imageUrl,
        "newsSite": newsSite,
        "summary": summary,
        "publishedAt": publishedAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "featured": featured,
        "launches": List<dynamic>.from(launches.map((x) => x.toJson())),
        "events": List<dynamic>.from(events.map((x) => x.toJson())),
      };

  NewsEntitie toEntity() => NewsEntitie(
        id: id,
        title: title,
        url: url,
        imageUrl: imageUrl,
        newsSite: newsSite,
        summary: summary,
        publishedAt: publishedAt,
        updatedAt: updatedAt,
        featured: featured,
        launches: launches,
        events: events,
      );

  List<Object?> get props => [
        id,
        title,
        url,
        imageUrl,
        newsSite,
        summary,
        publishedAt,
        updatedAt,
        featured,
        launches,
        events,
      ];
}

class Event {
  Event({
    required this.id,
    required this.provider,
  });

  int id;
  String provider;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        id: json["id"],
        provider: json["provider"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "provider": provider,
      };
}

class Launch {
  Launch({
    required this.id,
    required this.provider,
  });

  String id;
  String provider;

  factory Launch.fromJson(Map<String, dynamic> json) => Launch(
        id: json["id"],
        provider: json["provider"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "provider": provider,
      };
}
