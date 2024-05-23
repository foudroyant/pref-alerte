import '/components/help_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'help_screen_widget.dart' show HelpScreenWidget;
import 'package:flutter/material.dart';

class HelpScreenModel extends FlutterFlowModel<HelpScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for help_component component.
  late HelpComponentModel helpComponentModel1;
  // Model for help_component component.
  late HelpComponentModel helpComponentModel2;

  @override
  void initState(BuildContext context) {
    helpComponentModel1 = createModel(context, () => HelpComponentModel());
    helpComponentModel2 = createModel(context, () => HelpComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    helpComponentModel1.dispose();
    helpComponentModel2.dispose();
  }
}
