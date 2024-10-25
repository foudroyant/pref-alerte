import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'indicatif_pays_model.dart';
export 'indicatif_pays_model.dart';

class IndicatifPaysWidget extends StatefulWidget {
  const IndicatifPaysWidget({
    super.key,
    required this.indicatifs,
  });

  final List<IndicatifsRecord>? indicatifs;

  @override
  State<IndicatifPaysWidget> createState() => _IndicatifPaysWidgetState();
}

class _IndicatifPaysWidgetState extends State<IndicatifPaysWidget> {
  late IndicatifPaysModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndicatifPaysModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.indices = widget.indicatifs!.toList().cast<IndicatifsRecord>();
      safeSetState(() {});
    });

    _model.queryTextController ??= TextEditingController();
    _model.queryFocusNode ??= FocusNode();
    _model.queryFocusNode!.addListener(
      () async {
        _model.indices = widget.indicatifs!.toList().cast<IndicatifsRecord>();
        safeSetState(() {});
      },
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Indicatif de pays',
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'Outfit',
                    letterSpacing: 0.0,
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
              child: TextFormField(
                controller: _model.queryTextController,
                focusNode: _model.queryFocusNode,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.queryTextController',
                  const Duration(milliseconds: 2000),
                  () async {
                    _model.resultatIndicatifs =
                        await actions.rechercheIndicatif(
                      widget.indicatifs?.toList(),
                      _model.queryTextController.text,
                    );
                    _model.indices = _model.resultatIndicatifs!
                        .toList()
                        .cast<IndicatifsRecord>();
                    safeSetState(() {});

                    safeSetState(() {});
                  },
                ),
                obscureText: false,
                decoration: InputDecoration(
                  isDense: false,
                  labelText: 'Recherche',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Manrope',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Manrope',
                      letterSpacing: 0.0,
                    ),
                maxLines: null,
                validator:
                    _model.queryTextControllerValidator.asValidator(context),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
              child: Builder(
                builder: (context) {
                  final lesIndices = _model.indices.toList();

                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children:
                        List.generate(lesIndices.length, (lesIndicesIndex) {
                      final lesIndicesItem = lesIndices[lesIndicesIndex];
                      return Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().indicatif = lesIndicesItem.code;
                            FFAppState().imageindice = lesIndicesItem.image;
                            safeSetState(() {});
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    lesIndicesItem.image,
                                    width: 30.0,
                                    height: 30.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      lesIndicesItem.pays,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      lesIndicesItem.code,
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Manrope',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ].divide(const SizedBox(width: 10.0)),
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          ].divide(const SizedBox(height: 10.0)),
        ),
      ),
    );
  }
}
