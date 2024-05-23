import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'help_component_model.dart';
export 'help_component_model.dart';

class HelpComponentWidget extends StatefulWidget {
  const HelpComponentWidget({super.key});

  @override
  State<HelpComponentWidget> createState() => _HelpComponentWidgetState();
}

class _HelpComponentWidgetState extends State<HelpComponentWidget> {
  late HelpComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HelpComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                'Bienvenue sur PrefALERTE !',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              subtitle: Text(
                'Recevez vos notifications en temps réel pour les rendez-vous en préfecture ! Vous en avez assez de vérifier constamment la disponibilité des créneaux pour vos rendez-vous en préfecture ? Ne vous inquiétez plus ! Avec PrefALERTE, vous pouvez vous abonner pour recevoir des notifications PUSH et des SMS d\'alerte dès qu\'un créneau se libère.',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Manrope',
                      letterSpacing: 0.0,
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
            ),
            ListTile(
              title: Text(
                'Pourquoi choisir PrefALERTE ? 🤔',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              subtitle: Text(
                '🚀 Instantanéité : Recevez des notifications en temps réel dès qu\'un créneau est disponible.\n\n🎯 Simplicité : Plus besoin de surveiller constamment le site de la préfecture, nous faisons le travail pour vous.\n\n👌 Personnalisé : Choisissez vos préférences de notification pour correspondre à votre emploi du temps et à vos besoins.',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Manrope',
                      letterSpacing: 0.0,
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
            ),
            ListTile(
              title: Text(
                'Comment ça marche ? 🤔',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              subtitle: Text(
                '1. Inscrivez-vous : Créez un compte en quelques clics et sélectionnez vos préférences de notification.\n\n2. Abonnez-vous : Choisissez la préfecture et le motif auquel vous dépendez, le service d\'abonnement qui vous convient le mieux.\n\n3. Recevez des notifications : Détendez-vous et laissez-nous vous informer dès qu\'un créneau se libère en temps réel.\n\nNe manquez plus jamais une opportunité de rendez-vous en préfecture. Inscrivez-vous dès aujourd\'hui et simplifiez votre vie administrative ! 📅',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Manrope',
                      letterSpacing: 0.0,
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
            ),
          ].divide(const SizedBox(height: 10.0)),
        ),
      ),
    );
  }
}
