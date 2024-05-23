import '/components/conditions_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'conditions_screen_widget.dart' show ConditionsScreenWidget;
import 'package:flutter/material.dart';

class ConditionsScreenModel extends FlutterFlowModel<ConditionsScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for conditions_component component.
  late ConditionsComponentModel conditionsComponentModel1;
  // Model for conditions_component component.
  late ConditionsComponentModel conditionsComponentModel2;

  @override
  void initState(BuildContext context) {
    conditionsComponentModel1 =
        createModel(context, () => ConditionsComponentModel());
    conditionsComponentModel2 =
        createModel(context, () => ConditionsComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    conditionsComponentModel1.dispose();
    conditionsComponentModel2.dispose();
  }
}
