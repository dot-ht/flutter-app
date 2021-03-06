import "package:flutter/material.dart";
import 'package:hack_tues_app/models/screen_arguments.dart';
import 'package:hack_tues_app/style.dart';

class PlanetCard extends StatelessWidget {
  final planet;

  PlanetCard(this.planet);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            "/planet_page",
            arguments: ScreenArguments(planet),
          );
        },
        child: Container(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 80.0,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: planetCardColor,
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 100.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15.0),
                              child: Text(
                                planet.name,
                                style: TextStyle(
                                  color: lightMainFontColor,
                                  fontSize: 44.0,
                                  fontFamily: fontName,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Text(
                              planet.sub,
                              style: TextStyle(
                                color: lightMainFontColor,
                                fontSize: 20.0,
                                fontFamily: fontName,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                              child: Text(
                                planet.description,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: lightSecondFontColor,
                                  fontSize: 18.0,
                                  fontFamily: fontName,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15.0),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    "/planet_page",
                                    arguments: ScreenArguments(planet),
                                  );
                                },
                                child: Text(
                                  "Learn more",
                                  style: TextStyle(
                                    color: Colors.purple[400],
                                    fontSize: 20.0,
                                    fontFamily: fontName,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Hero(
                tag: planet.name,
                child: Image.network(
                  planet.iconImage,
                  height: 300.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    //   GestureDetector(
    //     onTap: () {},
    //     child: Container(
    //       width: MediaQuery.of(context).size.width,
    //       margin: EdgeInsets.symmetric(horizontal: 5.0),
    //       child: ,
    //     ),
    //   );
  }
}
