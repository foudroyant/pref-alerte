import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modifier_motif_component_widget.dart' show ModifierMotifComponentWidget;
import 'package:flutter/material.dart';

class ModifierMotifComponentModel
    extends FlutterFlowModel<ModifierMotifComponentWidget> {
  ///  Local state fields for this component.

  List<MotifStruct> motifs = [];
  void addToMotifs(MotifStruct item) => motifs.add(item);
  void removeFromMotifs(MotifStruct item) => motifs.remove(item);
  void removeAtIndexFromMotifs(int index) => motifs.removeAt(index);
  void insertAtIndexInMotifs(int index, MotifStruct item) =>
      motifs.insert(index, item);
  void updateMotifsAtIndex(int index, Function(MotifStruct) updateFn) =>
      motifs[index] = updateFn(motifs[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for motif_small widget.
  FocusNode? motifSmallFocusNode;
  TextEditingController? motifSmallTextController;
  String? Function(BuildContext, String?)? motifSmallTextControllerValidator;
  // State field(s) for lien_small widget.
  FocusNode? lienSmallFocusNode;
  TextEditingController? lienSmallTextController;
  String? Function(BuildContext, String?)? lienSmallTextControllerValidator;
  // State field(s) for motif_large widget.
  FocusNode? motifLargeFocusNode;
  TextEditingController? motifLargeTextController;
  String? Function(BuildContext, String?)? motifLargeTextControllerValidator;
  // State field(s) for lien_large widget.
  FocusNode? lienLargeFocusNode;
  TextEditingController? lienLargeTextController;
  String? Function(BuildContext, String?)? lienLargeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    motifSmallFocusNode?.dispose();
    motifSmallTextController?.dispose();

    lienSmallFocusNode?.dispose();
    lienSmallTextController?.dispose();

    motifLargeFocusNode?.dispose();
    motifLargeTextController?.dispose();

    lienLargeFocusNode?.dispose();
    lienLargeTextController?.dispose();
  }
}
