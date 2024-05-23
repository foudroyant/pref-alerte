import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class MessagerieRecord extends FirestoreRecord {
  MessagerieRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "client" field.
  DocumentReference? _client;
  DocumentReference? get client => _client;
  bool hasClient() => _client != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "from" field.
  DocumentReference? _from;
  DocumentReference? get from => _from;
  bool hasFrom() => _from != null;

  // "non_lu" field.
  bool? _nonLu;
  bool get nonLu => _nonLu ?? false;
  bool hasNonLu() => _nonLu != null;

  void _initializeFields() {
    _client = snapshotData['client'] as DocumentReference?;
    _message = snapshotData['message'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _from = snapshotData['from'] as DocumentReference?;
    _nonLu = snapshotData['non_lu'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('messagerie');

  static Stream<MessagerieRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessagerieRecord.fromSnapshot(s));

  static Future<MessagerieRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessagerieRecord.fromSnapshot(s));

  static MessagerieRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessagerieRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessagerieRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessagerieRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessagerieRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessagerieRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessagerieRecordData({
  DocumentReference? client,
  String? message,
  DateTime? date,
  DocumentReference? from,
  bool? nonLu,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'client': client,
      'message': message,
      'date': date,
      'from': from,
      'non_lu': nonLu,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessagerieRecordDocumentEquality implements Equality<MessagerieRecord> {
  const MessagerieRecordDocumentEquality();

  @override
  bool equals(MessagerieRecord? e1, MessagerieRecord? e2) {
    return e1?.client == e2?.client &&
        e1?.message == e2?.message &&
        e1?.date == e2?.date &&
        e1?.from == e2?.from &&
        e1?.nonLu == e2?.nonLu;
  }

  @override
  int hash(MessagerieRecord? e) => const ListEquality()
      .hash([e?.client, e?.message, e?.date, e?.from, e?.nonLu]);

  @override
  bool isValidKey(Object? o) => o is MessagerieRecord;
}
