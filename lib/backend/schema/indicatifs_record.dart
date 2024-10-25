import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IndicatifsRecord extends FirestoreRecord {
  IndicatifsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "pays" field.
  String? _pays;
  String get pays => _pays ?? '';
  bool hasPays() => _pays != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _code = snapshotData['code'] as String?;
    _pays = snapshotData['pays'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('indicatifs');

  static Stream<IndicatifsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IndicatifsRecord.fromSnapshot(s));

  static Future<IndicatifsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IndicatifsRecord.fromSnapshot(s));

  static IndicatifsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IndicatifsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IndicatifsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IndicatifsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IndicatifsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IndicatifsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIndicatifsRecordData({
  String? image,
  String? code,
  String? pays,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'code': code,
      'pays': pays,
    }.withoutNulls,
  );

  return firestoreData;
}

class IndicatifsRecordDocumentEquality implements Equality<IndicatifsRecord> {
  const IndicatifsRecordDocumentEquality();

  @override
  bool equals(IndicatifsRecord? e1, IndicatifsRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.code == e2?.code &&
        e1?.pays == e2?.pays;
  }

  @override
  int hash(IndicatifsRecord? e) =>
      const ListEquality().hash([e?.image, e?.code, e?.pays]);

  @override
  bool isValidKey(Object? o) => o is IndicatifsRecord;
}
