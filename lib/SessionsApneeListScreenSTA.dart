import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:apnee_plaisir/SeanceApnee.dart';
import 'package:apnee_plaisir/WelcomeScreen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class SessionsApneeListScreenSTA extends StatelessWidget {

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

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'UzHFKlErmWU',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Replay Apnee Statique")
        ),
      body: ListView.builder(
        itemCount: sessionsApneeListSTA.length,
        itemBuilder: (context, index){
          final seanceApnee = sessionsApneeListSTA[index];
          return SeanceApneeWidget(seanceApnee: seanceApnee);
        },
      ),
    );
  }
}

class SeanceApneeWidget extends StatelessWidget {
  const SeanceApneeWidget({
    Key? key,
    required this.seanceApnee,
  }) : super(key: key);

  final SeanceApnee seanceApnee;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [


            Container(
                child: Text(seanceApnee.videoURL)
            ),


            Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text("Séance " + seanceApnee.discipline + " " + seanceApnee.numero.toString(),
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue
                          )
                      ),
                    ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text("Par : " + seanceApnee.animateur,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue
                          ),
                      ),
                    ),
                ),
              ],
            ),
          ],
      ),
    );
  }
}

