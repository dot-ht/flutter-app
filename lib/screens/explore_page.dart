import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hack_tues_app/models/planets_data.dart';
import 'package:hack_tues_app/services/rest_service.dart';
import 'package:hack_tues_app/style.dart';
import 'package:hack_tues_app/widgets/planet_card.dart';
import '../api/rest_api.dart';

class ExplorePage extends StatefulWidget {
  @override
  _PlanetPageState createState() => _PlanetPageState();
}

class _PlanetPageState extends State<ExplorePage> {
  final _planets = RestService(RestApi()).getPlanets();
  var _planetsLenght;
  int _currentIndex = 2;

  @override
  void initState() {
    super.initState();
    getLenght(_planets);
  }

  void getLenght(_planets) async {
    final lenght = await _planets.planets.lenght;
    setState(() => _planetsLenght = lenght);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //color: Colors.amber,
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
              //color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height:
                            MediaQuery.of(context).size.height * 0.70 * 0.82,
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
                      _planetsLenght,
                      (index) => PlanetCard(_planets),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _planetsLenght,
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
