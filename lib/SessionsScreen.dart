import 'package:flutter/material.dart';
import 'package:apnee_plaisir/SessionsApneeList.dart';
import 'package:apnee_plaisir/SeanceApnee.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/*

class SessionsApneeListScreen extends StatelessWidget {
  // const SessionsApneeListScreen({Key? key, @required SessionsApneeList}) : super(key: key);

  final List<SeanceApnee> sessionsApneeListSTA = [
    SeanceApnee(
      "STA",
      1,
      "Philippe Valentin",
      "https://www.youtube.com/QKCz-Ze5uhw",
      "21/11/2021",
      "Séance d'apnée numéro 1",
    ),
    SeanceApnee(
      "STA",
      2,
      "Philippe Valentin",
      "https://www.youtube.com/watch?v=LD-6ZjYW8Ro",
      "01/01/1900",
      "Séance d'apnée numéro 2",
    )
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Replay Apnee Statique")
      ),
      body: ListView.builder(
        itemCount: sessionsApneeListSTA.length,
        itemBuilder: (context, index){
          return sessionApneeWidget(SeanceApnee : sessionsApneeListSTA[index])
          },
      ),
    );
  }
}

class sessionApneeWidget extends StatelessWidget {
  const sessionApneeWidget({Key? key}, @required this.seanceApnee) : super(key: key);
  final SeanceApnee seanceApnee

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

*/