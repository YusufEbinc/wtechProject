import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_wtech_project/views/screens/home_screen.dart';
import 'package:flutter_wtech_project/views/screens/profil_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({
    Key? key,
  }) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: 'https://www.youtube.com/watch?v=1lxRPtq7G7s&t=123s',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: YoutubePlayer(
              controller: controller,
              liveUIColor: Colors.red,
              showVideoProgressIndicator: true,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 20,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.home,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Anasayfa',
                          style: GoogleFonts.oswald(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfilPage()));
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.person,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Profil',
                          style: GoogleFonts.oswald(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HelpPage()));
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.help,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Yradım',
                          style: GoogleFonts.oswald(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.settings,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Ayarlar',
                          style: GoogleFonts.oswald(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
