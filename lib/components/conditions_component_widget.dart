import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'conditions_component_model.dart';
export 'conditions_component_model.dart';

class ConditionsComponentWidget extends StatefulWidget {
  const ConditionsComponentWidget({super.key});

  @override
  State<ConditionsComponentWidget> createState() =>
      _ConditionsComponentWidgetState();
}

class _ConditionsComponentWidgetState extends State<ConditionsComponentWidget> {
  late ConditionsComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConditionsComponentModel());

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
          children: [
            ListTile(
              title: Text(
                'Conditions d\'utilisation de PrefALERTE 📱📅',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              subtitle: Text(
                'Bienvenue chez PrefALERTE ! En utilisant notre service, vous acceptez les conditions énoncées ci-dessous. Veuillez les lire attentivement avant de vous abonner à nos services.',
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
                '1. Description du service',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              subtitle: Text(
                'PrefALERTE offre un service de notifications en temps réel pour informer les utilisateurs de la disponibilité des créneaux pour les rendez-vous en préfecture. Vous pouvez vous abonner à ce service pour recevoir des notifications PUSH 📲 et des SMS 📩 d\'alerte dès qu\'un créneau se libère.',
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
                '2. Utilisation du service',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              subtitle: Text(
                'En vous abonnant à PrefALERTE, vous vous engagez à utiliser le service de manière légale et conforme aux présentes conditions d\'utilisation. Vous acceptez de ne pas utiliser le service à des fins illégales ou frauduleuses 🚫.',
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
                '3. Responsabilités de l\'utilisateur',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              subtitle: Text(
                'Les utilisateurs sont responsables de maintenir la confidentialité de leur compte et de leurs informations d\'identification 🔐. Vous acceptez de ne pas partager votre compte avec d\'autres personnes et de ne pas autoriser l\'accès à votre compte à des tiers.',
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
                '4. Abonnement et paiement',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              subtitle: Text(
                'L\'utilisation de PrefALERTE peut nécessiter un abonnement payant 💳. Les modalités de paiement seront clairement indiquées lors du processus d\'abonnement. Les paiements sont traités de manière sécurisée via des fournisseurs de services de paiement tiers.',
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
                '5. Annulation de l\'abonnement',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              subtitle: Text(
                'Les utilisateurs peuvent annuler leur abonnement à tout moment en accédant aux paramètres de leur compte ⚙️. Aucun remboursement ne sera accordé pour les périodes d\'abonnement déjà payées.',
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
                '6. Modifications des conditions',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              subtitle: Text(
                'PrefALERTE se réserve le droit de modifier ces conditions d\'utilisation à tout moment. Les modifications entreront en vigueur dès leur publication sur le site 🌐. Il est de la responsabilité des utilisateurs de consulter régulièrement ces conditions pour prendre connaissance des éventuelles mises à jour.',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Manrope',
                      letterSpacing: 0.0,
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
            ),
            ListTile(
              subtitle: Text(
                'En utilisant PrefALERTE, vous acceptez d\'être lié par ces conditions d\'utilisation. Si vous n\'acceptez pas ces conditions, veuillez ne pas utiliser nos services.\n\nMerci de votre confiance et bonne utilisation de PrefALERTE ! 🎉',
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
