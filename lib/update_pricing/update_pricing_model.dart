import '/flutter_flow/flutter_flow_util.dart';
import 'update_pricing_widget.dart' show UpdatePricingWidget;
import 'package:flutter/material.dart';

class UpdatePricingModel extends FlutterFlowModel<UpdatePricingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
