import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'resume_message_component_widget.dart' show ResumeMessageComponentWidget;
import 'package:flutter/material.dart';

class ResumeMessageComponentModel
    extends FlutterFlowModel<ResumeMessageComponentWidget> {
  ///  Local state fields for this component.

  List<MessagerieRecord> messages = [];
  void addToMessages(MessagerieRecord item) => messages.add(item);
  void removeFromMessages(MessagerieRecord item) => messages.remove(item);
  void removeAtIndexFromMessages(int index) => messages.removeAt(index);
  void insertAtIndexInMessages(int index, MessagerieRecord item) =>
      messages.insert(index, item);
  void updateMessagesAtIndex(int index, Function(MessagerieRecord) updateFn) =>
      messages[index] = updateFn(messages[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in resume_message_component widget.
  List<MessagerieRecord>? lesMessages;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
