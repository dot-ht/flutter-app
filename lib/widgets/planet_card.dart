import "package:flutter/material.dart";
import "package:hack_tues_app/models/planets_data.dart";
import 'package:hack_tues_app/models/screen_arguments.dart';

class PlanetCard extends StatelessWidget {
  final int index;

  PlanetCard(this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        //color: Colors.black,
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
                      color: Colors.white,
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
                              planets[index].name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 44.0,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Text(
                            "Human planet",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                            child: Text(
                              planets[index].description,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xff374459),
                                fontSize: 18.0,
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
                                  arguments: ScreenArguments(index),
                                );
                              },
                              child: Text(
                                "Learn more",
                                style: TextStyle(
                                  color: Colors.purple[700],
                                  fontSize: 20.0,
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
            Image.asset(
              planets[index].iconImage,
              height: 300.0,
            ),
          ],
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
