import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:rent_home_app/model/home.dart';
import 'package:rent_home_app/pages/Detail_page.dart';
import 'package:rent_home_app/pages/Menu_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffFAFAFA),
        textTheme: GoogleFonts.ralewayTextTheme(),
      ),
      home: const MenuPage(),
      routes: {
        '/detail': (context) {
          Home home = ModalRoute.of(context)!.settings.arguments as Home;
          return DetailPage(home: home);
        }
      },
    );
  }
}