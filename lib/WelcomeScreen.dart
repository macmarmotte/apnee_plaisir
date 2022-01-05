import 'package:flutter/material.dart';
import 'package:apnee_plaisir/SessionsApneeList.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apnée Plaisir"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Image.asset(
              'images/apneiste.png',
              width: 600,
              height: 240,
              fit:BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              // When the child is tapped, show a snackbar.
              onTap: () {
                Navigator.pushNamed(
                    context,
                    '/SessionsApneeSTA');
                },
              // The custom button
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text('Apnee Statique',
                  style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign:
                    TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              // When the child is tapped, show a snackbar.
              onTap: () {
                Navigator.pushNamed(
                    context,
                    '/SessionsApneeSTA',
                );
              },
              // The custom button
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text('Apnee Dynamique',
                  style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign:
                    TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              // When the child is tapped, show a snackbar.
              onTap: () {
                Navigator.pushNamed(context, '/SessionsApneeSTA');
              },
              // The custom button
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text('YOGA',
                  style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign:
                    TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}

