import 'package:flutter/material.dart';
import 'package:hack_tues_app/models/screen_arguments.dart';
import 'package:hack_tues_app/screens/chat_page.dart';
import 'package:hack_tues_app/screens/home_state.dart';
import 'package:hack_tues_app/screens/planet_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments as ScreenArguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => HomeState());
      case "/planet_page":
        return PageRouteBuilder(
          transitionsBuilder: (context, animation, secAnimation, child) {
            return SlideTransition(
              position: Tween(
                begin: Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
          pageBuilder: (context, animation, secAnimation) {
            return PlanetPage(args.planet);
          },
        );
      case "/chat_page":
        return PageRouteBuilder(
          transitionsBuilder: (context, animation, secAnimation, child) {
            return SlideTransition(
              position: Tween(
                begin: Offset(.0, 1.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
          pageBuilder: (context, animation, secAnimation) {
            return ChatPage();
          },
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
        body: Center(
          child: Text("ERROR"),
        ),
      );
    });
  }
}
