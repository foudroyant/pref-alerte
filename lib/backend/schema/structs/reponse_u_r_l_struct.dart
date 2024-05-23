// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ReponseURLStruct extends FFFirebaseStruct {
  ReponseURLStruct({
    String? url,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _url = url,
        super(firestoreUtilData);

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;
  bool hasUrl() => _url != null;

  static ReponseURLStruct fromMap(Map<String, dynamic> data) =>
      ReponseURLStruct(
        url: data['url'] as String?,
      );

  static ReponseURLStruct? maybeFromMap(dynamic data) => data is Map
      ? ReponseURLStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'url': _url,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReponseURLStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReponseURLStruct(
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReponseURLStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReponseURLStruct && url == other.url;
  }

  @override
  int get hashCode => const ListEquality().hash([url]);
}

ReponseURLStruct createReponseURLStruct({
  String? url,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReponseURLStruct(
      url: url,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReponseURLStruct? updateReponseURLStruct(
  ReponseURLStruct? reponseURL, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    reponseURL
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReponseURLStructData(
  Map<String, dynamic> firestoreData,
  ReponseURLStruct? reponseURL,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (reponseURL == null) {
    return;
  }
  if (reponseURL.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && reponseURL.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final reponseURLData = getReponseURLFirestoreData(reponseURL, forFieldValue);
  final nestedData = reponseURLData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = reponseURL.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReponseURLFirestoreData(
  ReponseURLStruct? reponseURL, [
  bool forFieldValue = false,
]) {
  if (reponseURL == null) {
    return {};
  }
  final firestoreData = mapToFirestore(reponseURL.toMap());

  // Add any Firestore field values
  reponseURL.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReponseURLListFirestoreData(
  List<ReponseURLStruct>? reponseURLs,
) =>
    reponseURLs?.map((e) => getReponseURLFirestoreData(e, true)).toList() ?? [];
