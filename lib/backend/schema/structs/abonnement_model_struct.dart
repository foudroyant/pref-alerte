// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AbonnementModelStruct extends FFFirebaseStruct {
  AbonnementModelStruct({
    String? prefecture,
    String? motif,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _prefecture = prefecture,
        _motif = motif,
        super(firestoreUtilData);

  // "prefecture" field.
  String? _prefecture;
  String get prefecture => _prefecture ?? '';
  set prefecture(String? val) => _prefecture = val;
  bool hasPrefecture() => _prefecture != null;

  // "motif" field.
  String? _motif;
  String get motif => _motif ?? '';
  set motif(String? val) => _motif = val;
  bool hasMotif() => _motif != null;

  static AbonnementModelStruct fromMap(Map<String, dynamic> data) =>
      AbonnementModelStruct(
        prefecture: data['prefecture'] as String?,
        motif: data['motif'] as String?,
      );

  static AbonnementModelStruct? maybeFromMap(dynamic data) => data is Map
      ? AbonnementModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'prefecture': _prefecture,
        'motif': _motif,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'prefecture': serializeParam(
          _prefecture,
          ParamType.String,
        ),
        'motif': serializeParam(
          _motif,
          ParamType.String,
        ),
      }.withoutNulls;

  static AbonnementModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      AbonnementModelStruct(
        prefecture: deserializeParam(
          data['prefecture'],
          ParamType.String,
          false,
        ),
        motif: deserializeParam(
          data['motif'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AbonnementModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AbonnementModelStruct &&
        prefecture == other.prefecture &&
        motif == other.motif;
  }

  @override
  int get hashCode => const ListEquality().hash([prefecture, motif]);
}

AbonnementModelStruct createAbonnementModelStruct({
  String? prefecture,
  String? motif,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AbonnementModelStruct(
      prefecture: prefecture,
      motif: motif,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AbonnementModelStruct? updateAbonnementModelStruct(
  AbonnementModelStruct? abonnementModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    abonnementModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAbonnementModelStructData(
  Map<String, dynamic> firestoreData,
  AbonnementModelStruct? abonnementModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (abonnementModel == null) {
    return;
  }
  if (abonnementModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && abonnementModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final abonnementModelData =
      getAbonnementModelFirestoreData(abonnementModel, forFieldValue);
  final nestedData =
      abonnementModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = abonnementModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAbonnementModelFirestoreData(
  AbonnementModelStruct? abonnementModel, [
  bool forFieldValue = false,
]) {
  if (abonnementModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(abonnementModel.toMap());

  // Add any Firestore field values
  abonnementModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAbonnementModelListFirestoreData(
  List<AbonnementModelStruct>? abonnementModels,
) =>
    abonnementModels
        ?.map((e) => getAbonnementModelFirestoreData(e, true))
        .toList() ??
    [];
