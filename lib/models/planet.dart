class Planet {
  final int position;
  final String name;
  final String sub;
  final String distance;
  final String radius;
  final String year;
  final String iconImage;
  final String description;
  final List<String> images;

  Planet({
    this.position,
    this.name,
    this.sub,
    this.distance,
    this.radius,
    this.year,
    this.iconImage,
    this.description,
    this.images,
  });
}

class Planets {
  final List<Planet> planets;

  Planets({this.planets});

  static Planets fromJson(dynamic json) {
    return Planets(planets: json['planets']);
  }
}
