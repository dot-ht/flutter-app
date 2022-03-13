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
  final List<dynamic> images;

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

  static Planet fromJson(Map<String, dynamic> json) {
    dynamic distance = json['distance'];
    if (json['distance'] < 1000) {
      distance = "${json['distance'].toString()} mil km";
    } else {
      distance = "${(json['distance'] / 1000).toString()} bil km";
    }

    return Planet(
      id: "${json['planet_id']}",
      type: json['planet_type'],
      name: json['planet_name'],
      sub: json['planet_sub'],
      distance: distance,
      radius: "${json['radius']} km",
      year: "${json['year']}",
      yearType: json['year_type'],
      iconImage: json['planet_ico'],
      description: json['planet_info'],
      images: json['planet_imgs'] as List<dynamic>,
    );
  }
}
