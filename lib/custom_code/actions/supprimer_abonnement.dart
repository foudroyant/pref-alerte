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

Future supprimerAbonnement(
    DocumentReference user, String motif, String prefecture) async {
  // Add your function code here!
  DocumentReference parentDocRef =
      FirebaseFirestore.instance.collection("users").doc(user.id);
  // Accéder à la sous-collection 'orders'
  CollectionReference abonnements = parentDocRef.collection('abonnement');

  // Requête pour obtenir les documents avec un motif spécifique
  QuerySnapshot querySnapshot = await abonnements
      .where('motif', isEqualTo: motif)
      .where('prefecture', isEqualTo: prefecture)
      .get();

  // Supprimer chaque document correspondant
  for (QueryDocumentSnapshot doc in querySnapshot.docs) {
    await doc.reference.delete();
    print('Document supprimé : ${doc.id}');
  }
}
