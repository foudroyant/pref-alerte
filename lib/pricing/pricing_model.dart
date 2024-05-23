import '/flutter_flow/flutter_flow_util.dart';
import 'pricing_widget.dart' show PricingWidget;
import 'package:flutter/material.dart';

class PricingModel extends FlutterFlowModel<PricingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
