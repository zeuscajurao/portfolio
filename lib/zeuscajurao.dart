import 'package:flutter/material.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/views/landing_page.dart';

class ZeusCajurao extends StatelessWidget {
  const ZeusCajurao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zeus Cajurao',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: white,
        iconTheme: const IconThemeData(
          color: black,
        ),
        primarySwatch: Colors.blue,
        fontFamily: "Alumni",
      ),
      home: const LandingPage(),
    );
  }
}
