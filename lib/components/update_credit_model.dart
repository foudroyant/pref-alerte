import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_credit_widget.dart' show UpdateCreditWidget;
import 'package:flutter/material.dart';

class UpdateCreditModel extends FlutterFlowModel<UpdateCreditWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Credits widget.
  FocusNode? creditsFocusNode1;
  TextEditingController? creditsTextController1;
  String? Function(BuildContext, String?)? creditsTextController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for Credits widget.
  FocusNode? creditsFocusNode2;
  TextEditingController? creditsTextController2;
  String? Function(BuildContext, String?)? creditsTextController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    creditsFocusNode1?.dispose();
    creditsTextController1?.dispose();

    creditsFocusNode2?.dispose();
    creditsTextController2?.dispose();
  }
}
