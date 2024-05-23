import '/flutter_flow/flutter_flow_util.dart';
import 'changer_numero_widget.dart' show ChangerNumeroWidget;
import 'package:flutter/material.dart';

class ChangerNumeroModel extends FlutterFlowModel<ChangerNumeroWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for telephone widget.
  FocusNode? telephoneFocusNode1;
  TextEditingController? telephoneTextController1;
  String? Function(BuildContext, String?)? telephoneTextController1Validator;
  // State field(s) for telephone widget.
  FocusNode? telephoneFocusNode2;
  TextEditingController? telephoneTextController2;
  String? Function(BuildContext, String?)? telephoneTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    telephoneFocusNode1?.dispose();
    telephoneTextController1?.dispose();

    telephoneFocusNode2?.dispose();
    telephoneTextController2?.dispose();
  }
}
