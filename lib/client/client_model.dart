import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'client_widget.dart' show ClientWidget;
import 'package:flutter/material.dart';

class ClientModel extends FlutterFlowModel<ClientWidget> {
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

  // Stores action output result for [Firestore Query - Query a collection] action in Client widget.
  List<PrefecturesRecord>? baPrefectures;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
