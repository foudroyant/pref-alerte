import '/flutter_flow/flutter_flow_util.dart';
import 'ajouter_indicatif_widget.dart' show AjouterIndicatifWidget;
import 'package:flutter/material.dart';

class AjouterIndicatifModel extends FlutterFlowModel<AjouterIndicatifWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for indice widget.
  FocusNode? indiceFocusNode;
  TextEditingController? indiceTextController;
  String? Function(BuildContext, String?)? indiceTextControllerValidator;
  // State field(s) for pays widget.
  FocusNode? paysFocusNode;
  TextEditingController? paysTextController;
  String? Function(BuildContext, String?)? paysTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    indiceFocusNode?.dispose();
    indiceTextController?.dispose();

    paysFocusNode?.dispose();
    paysTextController?.dispose();
  }
}
