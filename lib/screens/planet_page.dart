import "package:flutter/material.dart";
import 'package:hack_tues_app/models/planets_data.dart';

class PlanetPage extends StatelessWidget {
  final int index;

  PlanetPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: Image.asset(
                        planets[index].iconImage,
                      ),
                    ),
                    Positioned(
                      top: 50.0,
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
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "148, 377, 282 MI KM",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Radius",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "3,330 kilometers",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Year",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "678 Earth Days",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Planet Type",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 40.0),
                            child: Text(
                              "Terrestrial",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back),
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
                      planets[index].name,
                      style: TextStyle(
                        fontSize: 56,
                      ),
                    ),
                    Text(
                      "The Human Planet",
                      style: TextStyle(
                        fontSize: 31,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Divider(
                        color: Color(0xff374459).withOpacity(0.25),
                        thickness: 1.0,
                      ),
                    ),
                    Text(
                      planets[index].description,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Divider(
                        color: Color(0xff374459).withOpacity(0.25),
                        thickness: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, bottom: 5.0),
                child: Text(
                  "Gallery",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                height: 180.0,
                margin: EdgeInsets.only(bottom: 15.0),
                child: ListView.builder(
                  padding: EdgeInsets.only(right: 16.0),
                  itemCount: planets[index].images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, itemIdx) {
                    return Container(
                      width: 150.0,
                      margin: EdgeInsets.fromLTRB(16.0, 5.0, 0, 15.0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3.0,
                            blurRadius: 5.0,
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                          image: NetworkImage(planets[index].images[0]),
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
