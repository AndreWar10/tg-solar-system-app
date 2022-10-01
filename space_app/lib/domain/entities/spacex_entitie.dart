import '../../data/models/spacex_model.dart';

class SpacexEntitie {
  SpacexEntitie({
    this.flightNumber,
    this.missionName,
    this.missionId,
    this.upcoming,
    this.launchYear,
    this.launchDateUnix,
    this.launchDateUtc,
    this.launchDateLocal,
    this.isTentative,
    this.tentativeMaxPrecision,
    this.tbd,
    this.launchWindow,
    this.rocket,
    this.ships,
    this.telemetry,
    this.reuse,
    this.launchSite,
    this.launchSuccess,
    this.launchFailureDetails,
    this.links,
    this.details,
    this.staticFireDateUtc,
    
    this.staticFireDateUnix,
   // this.timeline,
    this.crew,
    this.lastDateUpdate,
    this.lastLlLaunchDate,
    this.lastLlUpdate,
    this.lastWikiLaunchDate,
    this.lastWikiRevision,
    this.lastWikiUpdate,
    this.launchDateSource,
  });

  int? flightNumber;
  String? missionName;
  List<String>? missionId;
  bool? upcoming;
  String? launchYear;
  int? launchDateUnix;
  DateTime? launchDateUtc;
  DateTime? launchDateLocal;
  bool? isTentative;
  TentativeMaxPrecision? tentativeMaxPrecision;
  bool? tbd;
  int? launchWindow;
  Rocket? rocket;
  List<String>? ships;
  Telemetry? telemetry;
  Reuse? reuse;
  LaunchSite? launchSite;
  bool? launchSuccess;
  LaunchFailureDetails? launchFailureDetails;
  Links? links;
  String? details;
  DateTime? staticFireDateUtc;
  int? staticFireDateUnix;
  //Map<String, int>? timeline;
  List<dynamic>? crew;
  DateTime? lastDateUpdate;
  DateTime? lastLlLaunchDate;
  DateTime? lastLlUpdate;
  DateTime? lastWikiLaunchDate;
  String? lastWikiRevision;
  DateTime? lastWikiUpdate;
  LaunchDateSource? launchDateSource;

  List<Object?> get props => [
        flightNumber,
        missionName,
        missionId,
        upcoming,
        launchYear,
        launchDateUnix,
        launchDateUtc,
        launchDateLocal,
        isTentative,
        tentativeMaxPrecision,
        tbd,
        launchWindow,
        rocket,
        ships,
        telemetry,
        reuse,
        launchSite,
        launchSuccess,
        launchFailureDetails,
        links,
        details,
        staticFireDateUtc,
        staticFireDateUnix,
        //timeline,
        crew,
        lastDateUpdate,
        lastLlLaunchDate,
        lastLlUpdate,
        lastWikiLaunchDate,
        lastWikiRevision,
        lastWikiUpdate,
        launchDateSource,
      ];
}
