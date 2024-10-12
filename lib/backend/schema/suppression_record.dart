import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SuppressionRecord extends FirestoreRecord {
  SuppressionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "mail" field.
  String? _mail;
  String get mail => _mail ?? '';
  bool hasMail() => _mail != null;

  // "raison" field.
  String? _raison;
  String get raison => _raison ?? '';
  bool hasRaison() => _raison != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _mail = snapshotData['mail'] as String?;
    _raison = snapshotData['raison'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('suppression');

  static Stream<SuppressionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SuppressionRecord.fromSnapshot(s));

  static Future<SuppressionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SuppressionRecord.fromSnapshot(s));

  static SuppressionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SuppressionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SuppressionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SuppressionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SuppressionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SuppressionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSuppressionRecordData({
  String? mail,
  String? raison,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mail': mail,
      'raison': raison,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class SuppressionRecordDocumentEquality implements Equality<SuppressionRecord> {
  const SuppressionRecordDocumentEquality();

  @override
  bool equals(SuppressionRecord? e1, SuppressionRecord? e2) {
    return e1?.mail == e2?.mail &&
        e1?.raison == e2?.raison &&
        e1?.date == e2?.date;
  }

  @override
  int hash(SuppressionRecord? e) =>
      const ListEquality().hash([e?.mail, e?.raison, e?.date]);

  @override
  bool isValidKey(Object? o) => o is SuppressionRecord;
}
