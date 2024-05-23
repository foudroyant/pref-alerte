import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'abonnements_widget.dart' show AbonnementsWidget;
import 'package:flutter/material.dart';

class AbonnementsModel extends FlutterFlowModel<AbonnementsWidget> {
  ///  Local state fields for this page.

  List<PrefecturesRecord> prefectures = [];
  void addToPrefectures(PrefecturesRecord item) => prefectures.add(item);
  void removeFromPrefectures(PrefecturesRecord item) =>
      prefectures.remove(item);
  void removeAtIndexFromPrefectures(int index) => prefectures.removeAt(index);
  void insertAtIndexInPrefectures(int index, PrefecturesRecord item) =>
      prefectures.insert(index, item);
  void updatePrefecturesAtIndex(
          int index, Function(PrefecturesRecord) updateFn) =>
      prefectures[index] = updateFn(prefectures[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Abonnements widget.
  List<PrefecturesRecord>? baPrefectures;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
