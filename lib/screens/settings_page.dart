import 'package:flutter/material.dart';
import 'package:hack_tues_app/style.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 32.0, top: 32.0),
              margin: EdgeInsets.only(bottom: 10.0),
              child: Text(
                "Settings",
                style: TextStyle(
                  color: lightMainFontColor,
                  fontSize: 44.0,
                  fontFamily: fontName,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
