import '/components/update_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_nom_widget.dart' show UpdateNomWidget;
import 'package:flutter/material.dart';

class UpdateNomModel extends FlutterFlowModel<UpdateNomWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for update_component component.
  late UpdateComponentModel updateComponentModel1;
  // Model for update_component component.
  late UpdateComponentModel updateComponentModel2;

  @override
  void initState(BuildContext context) {
    updateComponentModel1 = createModel(context, () => UpdateComponentModel());
    updateComponentModel2 = createModel(context, () => UpdateComponentModel());
  }

  @override
  void dispose() {
    updateComponentModel1.dispose();
    updateComponentModel2.dispose();
  }
}
