import '/components/resume_message_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'clients_widget.dart' show ClientsWidget;
import 'package:flutter/material.dart';

class ClientsModel extends FlutterFlowModel<ClientsWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for resume_message_component dynamic component.
  late FlutterFlowDynamicModels<ResumeMessageComponentModel>
      resumeMessageComponentModels;

  @override
  void initState(BuildContext context) {
    resumeMessageComponentModels =
        FlutterFlowDynamicModels(() => ResumeMessageComponentModel());
  }

  @override
  void dispose() {
    resumeMessageComponentModels.dispose();
  }
}
