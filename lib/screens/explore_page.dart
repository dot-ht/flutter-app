import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hack_tues_app/services/rest_service.dart';
import 'package:hack_tues_app/style.dart';
import 'package:hack_tues_app/widgets/planet_card.dart';
import '../api/rest_api.dart';

class ExplorePage extends StatefulWidget {
  @override
  _PlanetPageState createState() => _PlanetPageState();
}

class _PlanetPageState extends State<ExplorePage> {
  final _restServices = RestService(RestApi());
  var _planets = [];
  int _currentIndex = 2;

  @override
  void initState() {
    super.initState();
    getPlanets();
  }

  void getPlanets() async {
    _restServices.getPlanets().then((planets) {
      setState(() {
        _planets = planets;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: _planets == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 32.0, top: 32.0),
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore",
                          style: TextStyle(
                            color: lightMainFontColor,
                            fontFamily: fontName,
                            fontSize: 44.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Solar System Planets",
                            style: TextStyle(
                              color: lightSecondFontColor,
                              fontFamily: fontName,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                              height: MediaQuery.of(context).size.height *
                                  0.70 *
                                  0.78,
                              initialPage: 2,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              }),
                          items: List.generate(
                            _planets.length,
                            (index) => PlanetCard(_planets[index]),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            _planets.length,
                            (index) => Container(
                              width: 10.0,
                              height: 10.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentIndex == index
                                    ? selectedTabColor
                                    : unselectedTabColor,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
