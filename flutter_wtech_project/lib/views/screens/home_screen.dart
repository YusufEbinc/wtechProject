import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_wtech_project/views/screens/detail_screen.dart';
import 'package:flutter_wtech_project/views/screens/help_screen.dart';
import 'package:flutter_wtech_project/views/screens/profil_screen.dart';
import 'package:google_fonts/google_fonts.dart';

final _firestore = FirebaseFirestore.instance;
CollectionReference animals = _firestore.collection('Animals');

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title =
        'Ne yazık ki bazı hayvan türleri için gezegendeki yaşam azalıyor.Her geçen gün yeni bir hayvanın yok olduğu dünyada biz insanların üzerine düşeni yapması onlar için hayati bir önem taşıyor...';
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xFFE8E1D9),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HAYVANLARI  KORUYALIM',
                    style: GoogleFonts.andada(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.andada(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: StreamBuilder<QuerySnapshot>(
              stream: animals.snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return const Text('bit hata oluştu ');
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView(
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data() as Map<String, dynamic>;
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            title: data['name'],
                            subtitle: data['detail'],
                            url: data['url'],
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height * .15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1, 10),
                              blurRadius: 18,
                              spreadRadius: -10,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              child: Image.network(
                                data['url'],
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              data['name'],
                              style: GoogleFonts.andada(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.arrow_right,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList());
              },
            ),
          )
        ],
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
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
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
