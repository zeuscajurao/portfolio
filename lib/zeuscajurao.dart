import 'package:flutter/material.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/views/landing_page.dart';

class ZeusCajurao extends StatelessWidget {
  const ZeusCajurao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 850,
      ),
      child: MaterialApp(
        title: 'Zeus Cajurao',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scrollbarTheme: ScrollbarThemeData(
            thickness: MaterialStateProperty.resolveWith((states) => 8),
            thumbColor: MaterialStateProperty.resolveWith(
                (states) => Colors.grey.shade300.withOpacity(.5)),
          ),
          backgroundColor: dark,
          iconTheme: const IconThemeData(
            color: white,
          ),
          fontFamily: "Alumni",
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
            secondary: accent,
            primary: primary,
          ),
        ),
        home: const LandingPage(),
      ),
    );
  }
}
