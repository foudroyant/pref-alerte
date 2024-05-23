import '/flutter_flow/flutter_flow_util.dart';
import 'motifs_screen_widget.dart' show MotifsScreenWidget;
import 'package:flutter/material.dart';

class MotifsScreenModel extends FlutterFlowModel<MotifsScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
