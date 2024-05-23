import '/flutter_flow/flutter_flow_util.dart';
import 'update_component_widget.dart' show UpdateComponentWidget;
import 'package:flutter/material.dart';

class UpdateComponentModel extends FlutterFlowModel<UpdateComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nom_prenom widget.
  FocusNode? nomPrenomFocusNode;
  TextEditingController? nomPrenomTextController;
  String? Function(BuildContext, String?)? nomPrenomTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomPrenomFocusNode?.dispose();
    nomPrenomTextController?.dispose();
  }
}
