import 'package:flutter/material.dart';

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
          Image.asset(
            'images/apneiste.png',
            width: 600,
            height: 240,
            fit:BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              // When the child is tapped, show a snackbar.
              onTap: () {
                const snackBar = SnackBar(content: Text('Tap'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              // The custom button
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text('Apnee Statique'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              // When the child is tapped, show a snackbar.
              onTap: () {
                const snackBar = SnackBar(content: Text('Tap'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              // The custom button
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text('Apnee Dynamique'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              // When the child is tapped, show a snackbar.
              onTap: () {
                const snackBar = SnackBar(content: Text('Tap'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              // The custom button
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text('YOGA'),
              ),
            ),
          ),
        ],
      )
    );
  }
}
