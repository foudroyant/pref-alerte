import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'indicatif_pays_widget.dart' show IndicatifPaysWidget;
import 'package:flutter/material.dart';

class IndicatifPaysModel extends FlutterFlowModel<IndicatifPaysWidget> {
  ///  Local state fields for this component.

  List<IndicatifsRecord> indices = [];
  void addToIndices(IndicatifsRecord item) => indices.add(item);
  void removeFromIndices(IndicatifsRecord item) => indices.remove(item);
  void removeAtIndexFromIndices(int index) => indices.removeAt(index);
  void insertAtIndexInIndices(int index, IndicatifsRecord item) =>
      indices.insert(index, item);
  void updateIndicesAtIndex(int index, Function(IndicatifsRecord) updateFn) =>
      indices[index] = updateFn(indices[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for query widget.
  FocusNode? queryFocusNode;
  TextEditingController? queryTextController;
  String? Function(BuildContext, String?)? queryTextControllerValidator;
  // Stores action output result for [Custom Action - rechercheIndicatif] action in query widget.
  List<IndicatifsRecord>? resultatIndicatifs;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    queryFocusNode?.dispose();
    queryTextController?.dispose();
  }
}
