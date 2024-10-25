import '/flutter_flow/flutter_flow_util.dart';
import 'changer_numero_widget.dart' show ChangerNumeroWidget;
import 'package:flutter/material.dart';

class ChangerNumeroModel extends FlutterFlowModel<ChangerNumeroWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for telephone widget.
  FocusNode? telephoneFocusNode;
  TextEditingController? telephoneTextController;
  String? Function(BuildContext, String?)? telephoneTextControllerValidator;
  // Stores action output result for [Custom Action - checkNumero] action in Button widget.
  bool? numeroIsGood;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    telephoneFocusNode?.dispose();
    telephoneTextController?.dispose();
  }
}
