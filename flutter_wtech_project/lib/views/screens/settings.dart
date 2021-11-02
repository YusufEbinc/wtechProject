import 'package:flutter/material.dart';
import 'package:flutter_wtech_project/views/screens/help_screen.dart';
import 'package:flutter_wtech_project/views/screens/home_screen.dart';
import 'package:flutter_wtech_project/views/screens/profil_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Ayarlar Sayfası'),
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
