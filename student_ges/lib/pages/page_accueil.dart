import 'package:flutter/material.dart';
import '../models/etudiant.dart';
import '../widgets/moyenne_alert.dart';

class PageAccueil extends StatelessWidget {
  final List<Etudiant> etudiants = [
    Etudiant(nom: 'Alice', moyenne: 17.25),
    Etudiant(nom: 'Bob', moyenne: 16.5),
    Etudiant(nom: 'Charlie', moyenne: 11.75),
    Etudiant(nom: 'David', moyenne: 12.75),
    Etudiant(nom: 'Eve', moyenne: 13.5),
    Etudiant(nom: 'Louis', moyenne: 18.5),
    Etudiant(nom: 'Mazabalo', moyenne: 16),
    Etudiant(nom: 'Esso', moyenne: 11.35),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Liste des étudiants')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Liste des étudiants et de leurs moyennes :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: etudiants.length,
                itemBuilder: (context, index) {
                  final etudiant = etudiants[index];
                  return Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ListTile(
                      title: Text(
                        'Nom: ${etudiant.nom}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Moyenne : ${etudiant.moyenne}'),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/details',
                          arguments: etudiant,
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              child: Text("Calculer la moyenne de la classe"),
              onPressed: () {
                final average = calculateMoyenne(etudiants);
                moyenneAlertDialog(context, average);
              },
            ),
          ],
        ),
      ),
    );
  }

  double calculateMoyenne(List<Etudiant> etudiants) {
    double total = 0.0;
    for (var etudiant in etudiants) {
      total += etudiant.moyenne;
    }
    return total / etudiants.length;
  }
}
