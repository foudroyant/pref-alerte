import '/flutter_flow/flutter_flow_util.dart';
import 'delete_compte_widget.dart' show DeleteCompteWidget;
import 'package:flutter/material.dart';

class DeleteCompteModel extends FlutterFlowModel<DeleteCompteWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for suppression widget.
  FocusNode? suppressionFocusNode;
  TextEditingController? suppressionTextController;
  String? Function(BuildContext, String?)? suppressionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    suppressionFocusNode?.dispose();
    suppressionTextController?.dispose();
  }
}
