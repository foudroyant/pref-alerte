import '/components/resume_message_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'clients_widget.dart' show ClientsWidget;
import 'package:flutter/material.dart';

class ClientsModel extends FlutterFlowModel<ClientsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for resume_message_component dynamic component.
  late FlutterFlowDynamicModels<ResumeMessageComponentModel>
      resumeMessageComponentModels1;
  // Models for resume_message_component dynamic component.
  late FlutterFlowDynamicModels<ResumeMessageComponentModel>
      resumeMessageComponentModels2;

  @override
  void initState(BuildContext context) {
    resumeMessageComponentModels1 =
        FlutterFlowDynamicModels(() => ResumeMessageComponentModel());
    resumeMessageComponentModels2 =
        FlutterFlowDynamicModels(() => ResumeMessageComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    resumeMessageComponentModels1.dispose();
    resumeMessageComponentModels2.dispose();
  }
}
