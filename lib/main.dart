import 'package:apnee_plaisir/SeanceApnee.dart';
import 'package:flutter/material.dart';
import 'package:apnee_plaisir/WelcomeScreen.dart';
import 'package:apnee_plaisir/SessionsApneeList.dart';
import 'package:apnee_plaisir/SessionsScreen.dart';
import 'package:apnee_plaisir/videoplayer.dart';

import 'SessionsApneeListScreenSTA.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Apnée Plaisir',
        initialRoute: '/',
        onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        )
    );
  }
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/' :
        return MaterialPageRoute(builder: (context) => WelcomeScreen());
      case '/SessionsApneeSTA' :
          return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => VideoPlayerScaffold(),
              transitionsBuilder: (context, animation, secondaryAnimation,
                  child) {
                animation =
                    CurvedAnimation(curve: Curves.ease, parent: animation);
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              }
          );
      default:
        return pageNotFound();
    }
  }

    static MaterialPageRoute pageNotFound() {
      return MaterialPageRoute(
          builder: (context) => Scaffold(
              appBar: AppBar(title:Text("Error"), centerTitle: true),
              body: Center(
                child: Text("Page not found"),
              )
          )
      );
    }
  }