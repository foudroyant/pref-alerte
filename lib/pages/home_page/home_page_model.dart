import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
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

  List<PrefecturesRecord> prefsBySearch = [];
  void addToPrefsBySearch(PrefecturesRecord item) => prefsBySearch.add(item);
  void removeFromPrefsBySearch(PrefecturesRecord item) =>
      prefsBySearch.remove(item);
  void removeAtIndexFromPrefsBySearch(int index) =>
      prefsBySearch.removeAt(index);
  void insertAtIndexInPrefsBySearch(int index, PrefecturesRecord item) =>
      prefsBySearch.insert(index, item);
  void updatePrefsBySearchAtIndex(
          int index, Function(PrefecturesRecord) updateFn) =>
      prefsBySearch[index] = updateFn(prefsBySearch[index]);

  List<PrefecturesRecord> prefDisplay = [];
  void addToPrefDisplay(PrefecturesRecord item) => prefDisplay.add(item);
  void removeFromPrefDisplay(PrefecturesRecord item) =>
      prefDisplay.remove(item);
  void removeAtIndexFromPrefDisplay(int index) => prefDisplay.removeAt(index);
  void insertAtIndexInPrefDisplay(int index, PrefecturesRecord item) =>
      prefDisplay.insert(index, item);
  void updatePrefDisplayAtIndex(
          int index, Function(PrefecturesRecord) updateFn) =>
      prefDisplay[index] = updateFn(prefDisplay[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  List<PrefecturesRecord>? lesPrefectures;
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
