import '/flutter_flow/flutter_flow_util.dart';
import 'modifier_prefecture_screen_widget.dart'
    show ModifierPrefectureScreenWidget;
import 'package:flutter/material.dart';

class ModifierPrefectureScreenModel
    extends FlutterFlowModel<ModifierPrefectureScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for m_prefecture widget.
  FocusNode? mPrefectureFocusNode;
  TextEditingController? mPrefectureTextController;
  String? Function(BuildContext, String?)? mPrefectureTextControllerValidator;
  // State field(s) for m_sprefecture widget.
  FocusNode? mSprefectureFocusNode;
  TextEditingController? mSprefectureTextController;
  String? Function(BuildContext, String?)? mSprefectureTextControllerValidator;
  // State field(s) for m_indictatif widget.
  FocusNode? mIndictatifFocusNode;
  TextEditingController? mIndictatifTextController;
  String? Function(BuildContext, String?)? mIndictatifTextControllerValidator;
  // State field(s) for prefecture_name widget.
  FocusNode? prefectureNameFocusNode;
  TextEditingController? prefectureNameTextController;
  String? Function(BuildContext, String?)?
      prefectureNameTextControllerValidator;
  // State field(s) for sous_pref widget.
  FocusNode? sousPrefFocusNode;
  TextEditingController? sousPrefTextController;
  String? Function(BuildContext, String?)? sousPrefTextControllerValidator;
  // State field(s) for indicatif widget.
  FocusNode? indicatifFocusNode;
  TextEditingController? indicatifTextController;
  String? Function(BuildContext, String?)? indicatifTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    mPrefectureFocusNode?.dispose();
    mPrefectureTextController?.dispose();

    mSprefectureFocusNode?.dispose();
    mSprefectureTextController?.dispose();

    mIndictatifFocusNode?.dispose();
    mIndictatifTextController?.dispose();

    prefectureNameFocusNode?.dispose();
    prefectureNameTextController?.dispose();

    sousPrefFocusNode?.dispose();
    sousPrefTextController?.dispose();

    indicatifFocusNode?.dispose();
    indicatifTextController?.dispose();
  }
}
