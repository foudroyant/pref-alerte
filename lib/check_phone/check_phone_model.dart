import '/flutter_flow/flutter_flow_util.dart';
import 'check_phone_widget.dart' show CheckPhoneWidget;
import 'package:flutter/material.dart';

class CheckPhoneModel extends FlutterFlowModel<CheckPhoneWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for otp widget.
  FocusNode? otpFocusNode;
  TextEditingController? otpTextController;
  String? Function(BuildContext, String?)? otpTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    otpFocusNode?.dispose();
    otpTextController?.dispose();
  }
}
