class ExoplanetEntitie {
  ExoplanetEntitie({
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
