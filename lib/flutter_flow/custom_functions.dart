import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<AbonnementModelStruct>? subscribes(
  List<PrefecturesRecord>? prefectures,
  List<String>? links,
) {
  List<AbonnementModelStruct> abonnements = [];
  prefectures!.forEach(
    (element) {
      element.motifs.forEach(
        (motif) {
          if (links!.contains(motif.lien)) {
            abonnements.add(AbonnementModelStruct(
                motif: motif.motif, prefecture: element.prefecture));
          }
        },
      );
    },
  );

  return abonnements;
}
