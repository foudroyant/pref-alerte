import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'prefectures_screen_widget.dart' show PrefecturesScreenWidget;
import 'package:flutter/material.dart';

class PrefecturesScreenModel extends FlutterFlowModel<PrefecturesScreenWidget> {
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

  List<PrefecturesRecord> prefecturesDisplay = [];
  void addToPrefecturesDisplay(PrefecturesRecord item) =>
      prefecturesDisplay.add(item);
  void removeFromPrefecturesDisplay(PrefecturesRecord item) =>
      prefecturesDisplay.remove(item);
  void removeAtIndexFromPrefecturesDisplay(int index) =>
      prefecturesDisplay.removeAt(index);
  void insertAtIndexInPrefecturesDisplay(int index, PrefecturesRecord item) =>
      prefecturesDisplay.insert(index, item);
  void updatePrefecturesDisplayAtIndex(
          int index, Function(PrefecturesRecord) updateFn) =>
      prefecturesDisplay[index] = updateFn(prefecturesDisplay[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for query widget.
  FocusNode? queryFocusNode;
  TextEditingController? queryTextController;
  String? Function(BuildContext, String?)? queryTextControllerValidator;
  // Stores action output result for [Custom Action - rechercherPrefecture] action in query widget.
  List<PrefecturesRecord>? prefecturesOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    queryFocusNode?.dispose();
    queryTextController?.dispose();
  }
}
