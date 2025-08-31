import 'package:flutter/material.dart';

void moyenneAlertDialog(BuildContext context, double average) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Moyenne des étudiants'),
        content: Text('La moyenne des étudiants est : $average'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}
