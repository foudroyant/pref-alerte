import '/flutter_flow/flutter_flow_util.dart';
import 'prefecture_widget.dart' show PrefectureWidget;
import 'package:flutter/material.dart';

class PrefectureModel extends FlutterFlowModel<PrefectureWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
