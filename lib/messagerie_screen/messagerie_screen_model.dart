import '/components/message_autre_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'messagerie_screen_widget.dart' show MessagerieScreenWidget;
import 'package:flutter/material.dart';

class MessagerieScreenModel extends FlutterFlowModel<MessagerieScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for message_autre_component dynamic component.
  late FlutterFlowDynamicModels<MessageAutreComponentModel>
      messageAutreComponentModels;
  // State field(s) for message widget.
  FocusNode? messageFocusNode;
  TextEditingController? messageTextController;
  String? Function(BuildContext, String?)? messageTextControllerValidator;

  @override
  void initState(BuildContext context) {
    messageAutreComponentModels =
        FlutterFlowDynamicModels(() => MessageAutreComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    messageAutreComponentModels.dispose();
    messageFocusNode?.dispose();
    messageTextController?.dispose();
  }
}
