import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'resume_message_component_model.dart';
export 'resume_message_component_model.dart';

class ResumeMessageComponentWidget extends StatefulWidget {
  const ResumeMessageComponentWidget({
    super.key,
    required this.client,
  });

  final DocumentReference? client;

  @override
  State<ResumeMessageComponentWidget> createState() =>
      _ResumeMessageComponentWidgetState();
}

class _ResumeMessageComponentWidgetState
    extends State<ResumeMessageComponentWidget> {
  late ResumeMessageComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResumeMessageComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.lesMessages = await queryMessagerieRecordOnce(
        queryBuilder: (messagerieRecord) => messagerieRecord.where(
          'client',
          isEqualTo: widget.client,
        ),
      );
      setState(() {
        _model.messages = _model.lesMessages!.toList().cast<MessagerieRecord>();
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          textScaler: MediaQuery.of(context).textScaler,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Messages : ',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Manrope',
                      color: FlutterFlowTheme.of(context).primary,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextSpan(
                text: valueOrDefault<String>(
                  _model.messages.length.toString(),
                  '0',
                ),
                style: const TextStyle(),
              )
            ],
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Manrope',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        RichText(
          textScaler: MediaQuery.of(context).textScaler,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Non lus : ',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Manrope',
                      color: FlutterFlowTheme.of(context).error,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextSpan(
                text: valueOrDefault<String>(
                  _model.messages
                      .where((e) =>
                          (e.from != currentUserReference) && (e.nonLu == true))
                      .toList()
                      .length
                      .toString(),
                  '0',
                ),
                style: const TextStyle(),
              )
            ],
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Manrope',
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ],
    );
  }
}
