// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MotifStruct extends FFFirebaseStruct {
  MotifStruct({
    String? lien,
    String? motif,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _lien = lien,
        _motif = motif,
        super(firestoreUtilData);

  // "lien" field.
  String? _lien;
  String get lien => _lien ?? '';
  set lien(String? val) => _lien = val;
  bool hasLien() => _lien != null;

  // "motif" field.
  String? _motif;
  String get motif => _motif ?? '';
  set motif(String? val) => _motif = val;
  bool hasMotif() => _motif != null;

  static MotifStruct fromMap(Map<String, dynamic> data) => MotifStruct(
        lien: data['lien'] as String?,
        motif: data['motif'] as String?,
      );

  static MotifStruct? maybeFromMap(dynamic data) =>
      data is Map ? MotifStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'lien': _lien,
        'motif': _motif,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'lien': serializeParam(
          _lien,
          ParamType.String,
        ),
        'motif': serializeParam(
          _motif,
          ParamType.String,
        ),
      }.withoutNulls;

  static MotifStruct fromSerializableMap(Map<String, dynamic> data) =>
      MotifStruct(
        lien: deserializeParam(
          data['lien'],
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
  String toString() => 'MotifStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MotifStruct && lien == other.lien && motif == other.motif;
  }

  @override
  int get hashCode => const ListEquality().hash([lien, motif]);
}

MotifStruct createMotifStruct({
  String? lien,
  String? motif,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MotifStruct(
      lien: lien,
      motif: motif,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MotifStruct? updateMotifStruct(
  MotifStruct? motifStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    motifStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMotifStructData(
  Map<String, dynamic> firestoreData,
  MotifStruct? motifStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (motifStruct == null) {
    return;
  }
  if (motifStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && motifStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final motifStructData = getMotifFirestoreData(motifStruct, forFieldValue);
  final nestedData =
      motifStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = motifStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMotifFirestoreData(
  MotifStruct? motifStruct, [
  bool forFieldValue = false,
]) {
  if (motifStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(motifStruct.toMap());

  // Add any Firestore field values
  motifStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMotifListFirestoreData(
  List<MotifStruct>? motifStructs,
) =>
    motifStructs?.map((e) => getMotifFirestoreData(e, true)).toList() ?? [];
