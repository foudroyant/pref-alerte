// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:diacritic/diacritic.dart';

Future<List<IndicatifsRecord>> rechercheIndicatif(
  List<IndicatifsRecord>? indicatifs,
  String? query,
) async {
  // Add your function code here!
  if (query == null || query.isEmpty || indicatifs == null) {
    return [];
  }

  // Fonction pour enlever les accents d'une chaîne de caractères
  String enleverAccents(String texte) {
    return removeDiacritics(texte); // Supprime les diacritiques
  }

  // Normalisation de la requête pour retirer les accents
  String queryNormalisee = enleverAccents(query.toLowerCase());

  List<IndicatifsRecord> _resultats = indicatifs.where((doc) {
    String paysNom = enleverAccents(doc.pays.toLowerCase());
    String indice = enleverAccents(doc.code.toLowerCase());

    return paysNom.contains(queryNormalisee) ||
        indice.contains(queryNormalisee);
  }).toList();

  return _resultats;
}
