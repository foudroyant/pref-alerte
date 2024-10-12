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

Future<bool> checkNumero(String? numero) async {
  // Add your function code here!
  return numero!.startsWith("+33") ||
          numero.startsWith("+594") ||
          numero.startsWith("+262") ||
          numero.startsWith("+590")
      ? true
      : false;
  //return numero!.contains("+") ? true : false;
}
