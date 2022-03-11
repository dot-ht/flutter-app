import 'package:flutter/material.dart';
import 'package:hack_tues_app/screens/explore_page.dart';
import 'package:hack_tues_app/screens/settings_page.dart';

class HomeState extends StatefulWidget {
  @override
  _HomeStateState createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  int _selectedIndex = 0;
  Widget _selectedBody = ExplorePage();

  void _updateTabSelection(int index, Widget body) {
    setState(() {
      _selectedIndex = index;
      _selectedBody = body;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedBody,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(
          context,
          "/chat_page",
        ),
        child: Icon(Icons.message),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  _updateTabSelection(0, ExplorePage());
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.home,
                  color: _selectedIndex == 0
                      ? Colors.blue.shade900
                      : Colors.grey.shade400,
                ),
              ),
              IconButton(
                onPressed: () {
                  _updateTabSelection(1, SettingsPage());
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.settings,
                  color: _selectedIndex == 1
                      ? Colors.blue.shade900
                      : Colors.grey.shade400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
