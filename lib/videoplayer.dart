import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';

class VideoPlayerScaffold extends StatefulWidget {
  const VideoPlayerScaffold({Key? key}) : super(key: key);

  @override

  _VideoPlayerScaffoldState createState() => _VideoPlayerScaffoldState();
}

class _VideoPlayerScaffoldState extends State<VideoPlayerScaffold> {

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'iLnmTe5Q2Qw',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        AppBar(
          title: Text("Replay Apnee Statique"),
        ),
      body:
      ListView(
        children: [
          YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: YoutubePlayerController(initialVideoId: 'QKCz-Ze5uhw'),
            ),
            builder: (context, player) {
              return Column(
                  children:[
                    player,
                  ]
              );
            },
          ),
        ],
      ),
    );
  }
}
