import '/flutter_flow/flutter_flow_util.dart';
import 'ajouter_motif_component_widget.dart' show AjouterMotifComponentWidget;
import 'package:flutter/material.dart';

class AjouterMotifComponentModel
    extends FlutterFlowModel<AjouterMotifComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for motif widget.
  FocusNode? motifFocusNode1;
  TextEditingController? motifTextController1;
  String? Function(BuildContext, String?)? motifTextController1Validator;
  // State field(s) for lien widget.
  FocusNode? lienFocusNode1;
  TextEditingController? lienTextController1;
  String? Function(BuildContext, String?)? lienTextController1Validator;
  // State field(s) for motif widget.
  FocusNode? motifFocusNode2;
  TextEditingController? motifTextController2;
  String? Function(BuildContext, String?)? motifTextController2Validator;
  // State field(s) for lien widget.
  FocusNode? lienFocusNode2;
  TextEditingController? lienTextController2;
  String? Function(BuildContext, String?)? lienTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    motifFocusNode1?.dispose();
    motifTextController1?.dispose();

    lienFocusNode1?.dispose();
    lienTextController1?.dispose();

    motifFocusNode2?.dispose();
    motifTextController2?.dispose();

    lienFocusNode2?.dispose();
    lienTextController2?.dispose();
  }
}
