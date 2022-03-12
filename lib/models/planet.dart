class Planet {
  final String id;
  final String name;
  final String type;
  final String sub;
  final String distance;
  final String radius;
  final String year;
  final String yearType;
  final String iconImage;
  final String description;
  final List<String> images;

  Planet({
    this.id,
    this.name,
    this.type,
    this.sub,
    this.distance,
    this.radius,
    this.year,
    this.yearType,
    this.iconImage,
    this.description,
    this.images,
  });

  static Planet fromJson(dynamic json) {
    dynamic distance = json['distance'];
    if (json['distance'] < 1000) {
      distance = "${json['distance'].toString()} mil km";
    } else {
      distance = "${(json['distance'] / 1000).toString()} bil km";
    }

    return Planet(
        id: json['planet_id'].toString(),
        type: json['planet_type'],
        name: json['planet_name'],
        sub: json['planet_sub'],
        distance: distance,
        radius: "${json['radius'].toString()} km",
        year: json['year'].toString(),
        yearType: json['year_type'],
        iconImage: json['iconImage'],
        description: json['planet_info'],
        images: json['planet_imgs']);
  }
}

class Planets {
  final List<Planet> planets;

  Planets({this.planets});

  static Planets fromJson(dynamic json) {
    final planetsJson = json['planets'];
    List<Planet> planets;

    for (int i = 0; i < planetsJson.lenght; ++i) {
      planets.add(Planet.fromJson(planetsJson[i]));
    }

    return Planets(planets: planets);
  }

  // reviewsData != null
  //     // map each review to a Review object
  //     ? reviewsData.map((reviewData) => Review.fromJson(reviewData))
  //       // map() returns an Iterable so we convert it to a List
  //       .toList()
  //     // use an empty list as fallback value
  //     : <Review>[];
}
