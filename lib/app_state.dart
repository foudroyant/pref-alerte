import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _indicatif = '+33';
  String get indicatif => _indicatif;
  set indicatif(String value) {
    _indicatif = value;
  }

  String _imageindice = '';
  String get imageindice => _imageindice;
  set imageindice(String value) {
    _imageindice = value;
  }
}
