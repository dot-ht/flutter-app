import "package:flutter/material.dart";
import 'package:hack_tues_app/models/planets_data.dart';
import 'package:hack_tues_app/style.dart';

class PlanetPage extends StatelessWidget {
  final planet;

  PlanetPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //color: Colors.purple,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                child: Stack(
                  children: [
                    Positioned(
                      right: -110,
                      top: 15,
                      child: Hero(
                        tag: planet.name,
                        child: Image.asset(
                          planet.iconImage,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 55.0,
                      left: 16.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              "Distance from Sun",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: lightMainFontColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "148, 377, 282 MI KM",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: lightSecondFontColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Radius",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: lightMainFontColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "3,330 kilometers",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: lightSecondFontColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Year",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: lightMainFontColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "678 Earth Days",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: lightSecondFontColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Planet Type",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: lightMainFontColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 40.0),
                            child: Text(
                              "Terrestrial",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: lightSecondFontColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: lightMainFontColor,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      planet.name,
                      style: TextStyle(
                        fontSize: 56,
                        fontWeight: FontWeight.w600,
                        color: lightMainFontColor,
                      ),
                    ),
                    Text(
                      planet.sub,
                      style: TextStyle(
                        fontSize: 31,
                        fontStyle: FontStyle.italic,
                        color: lightSecondFontColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Divider(
                        color: dividerColor,
                        thickness: 1.0,
                      ),
                    ),
                    Text(
                      planet.description,
                      style: TextStyle(fontSize: 20, color: lightMainFontColor),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Divider(
                        color: dividerColor,
                        thickness: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, bottom: 15.0),
                child: Text(
                  "Gallery",
                  style: TextStyle(
                    fontSize: 25,
                    color: lightMainFontColor,
                  ),
                ),
              ),
              Container(
                height: 180.0,
                margin: EdgeInsets.only(bottom: 15.0),
                child: ListView.builder(
                  padding: EdgeInsets.only(right: 16.0),
                  itemCount: planet.images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, itemIdx) {
                    return Container(
                      width: 150.0,
                      margin: EdgeInsets.fromLTRB(16.0, 5.0, 0, 15.0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 3.0,
                            blurRadius: 5.0,
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                          image: NetworkImage(planet.images[itemIdx]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
