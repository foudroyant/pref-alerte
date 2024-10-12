// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DescriptionStruct extends FFFirebaseStruct {
  DescriptionStruct({
    String? titre,
    String? description,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _titre = titre,
        _description = description,
        super(firestoreUtilData);

  // "titre" field.
  String? _titre;
  String get titre => _titre ?? '';
  set titre(String? val) => _titre = val;

  bool hasTitre() => _titre != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static DescriptionStruct fromMap(Map<String, dynamic> data) =>
      DescriptionStruct(
        titre: data['titre'] as String?,
        description: data['description'] as String?,
      );

  static DescriptionStruct? maybeFromMap(dynamic data) => data is Map
      ? DescriptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'titre': _titre,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'titre': serializeParam(
          _titre,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static DescriptionStruct fromSerializableMap(Map<String, dynamic> data) =>
      DescriptionStruct(
        titre: deserializeParam(
          data['titre'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DescriptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DescriptionStruct &&
        titre == other.titre &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([titre, description]);
}

DescriptionStruct createDescriptionStruct({
  String? titre,
  String? description,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DescriptionStruct(
      titre: titre,
      description: description,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DescriptionStruct? updateDescriptionStruct(
  DescriptionStruct? descriptionStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    descriptionStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDescriptionStructData(
  Map<String, dynamic> firestoreData,
  DescriptionStruct? descriptionStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (descriptionStruct == null) {
    return;
  }
  if (descriptionStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && descriptionStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final descriptionStructData =
      getDescriptionFirestoreData(descriptionStruct, forFieldValue);
  final nestedData =
      descriptionStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = descriptionStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDescriptionFirestoreData(
  DescriptionStruct? descriptionStruct, [
  bool forFieldValue = false,
]) {
  if (descriptionStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(descriptionStruct.toMap());

  // Add any Firestore field values
  descriptionStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDescriptionListFirestoreData(
  List<DescriptionStruct>? descriptionStructs,
) =>
    descriptionStructs
        ?.map((e) => getDescriptionFirestoreData(e, true))
        .toList() ??
    [];
