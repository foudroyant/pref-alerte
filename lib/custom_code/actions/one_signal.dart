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

//import OneSignal
import 'package:onesignal_flutter/onesignal_flutter.dart';

Future oneSignal() async {
  // Add your function code here!

  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("78226239-ce21-4000-86dc-bc3f3f100139");
  OneSignal.Notifications.requestPermission(true);

  //String user_id = await OneSignal.User.getOnesignalId() ?? '';
}
