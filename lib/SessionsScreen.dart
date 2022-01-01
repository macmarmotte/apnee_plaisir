class SeanceApneeListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SeanceApneeListScreenState();
  }
}
class ListScreenState extends State<SeanceApneeListScreen> {
  final List<SeanceApnee> seancesApnee_STA = [
    SeanceApnee(
        "STA",
        1,
        "Philippe Valentin",
        "https://www.youtube.com/QKCz-Ze5uhw",
        "21/11/2021",
        "Séance d'apnée numéro 1,
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
}