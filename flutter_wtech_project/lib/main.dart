import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wtech_project/views/screens/home_screen.dart';
import 'package:flutter_wtech_project/views/screens/profil_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          "/": (context) => const ProfilPage(),
        },
        theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFFE8E1D9),
            primaryColor: const Color(0xFFE8E1D9)),
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}
