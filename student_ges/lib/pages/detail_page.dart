import 'package:flutter/material.dart';
import '../models/etudiant.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final etudiant = ModalRoute.of(context)!.settings.arguments as Etudiant;

    return Scaffold(
      appBar: AppBar(
        title: Text("Détails de l'étudiant"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Nom de l\'étudiant : ${etudiant.nom}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Moyenne : ${etudiant.moyenne}',
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromARGB(255, 109, 170, 180),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
