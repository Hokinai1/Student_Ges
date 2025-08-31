import 'package:flutter/material.dart';
import 'pages/page_accueil.dart';
import 'pages/detail_page.dart';

void main() {
  runApp(MonApplication());
}

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 109, 170, 180),
          foregroundColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: PageAccueil(),
      routes: {'/details': (context) => DetailPage()},
    );
  }
}
