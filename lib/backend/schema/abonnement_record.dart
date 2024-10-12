import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AbonnementRecord extends FirestoreRecord {
  AbonnementRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "prefecture" field.
  String? _prefecture;
  String get prefecture => _prefecture ?? '';
  bool hasPrefecture() => _prefecture != null;

  // "motif" field.
  String? _motif;
  String get motif => _motif ?? '';
  bool hasMotif() => _motif != null;

  // "sousPrefecture" field.
  String? _sousPrefecture;
  String get sousPrefecture => _sousPrefecture ?? '';
  bool hasSousPrefecture() => _sousPrefecture != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _prefecture = snapshotData['prefecture'] as String?;
    _motif = snapshotData['motif'] as String?;
    _sousPrefecture = snapshotData['sousPrefecture'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('abonnement')
          : FirebaseFirestore.instance.collectionGroup('abonnement');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('abonnement').doc(id);

  static Stream<AbonnementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AbonnementRecord.fromSnapshot(s));

  static Future<AbonnementRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AbonnementRecord.fromSnapshot(s));

  static AbonnementRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AbonnementRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AbonnementRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AbonnementRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AbonnementRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AbonnementRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAbonnementRecordData({
  String? prefecture,
  String? motif,
  String? sousPrefecture,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'prefecture': prefecture,
      'motif': motif,
      'sousPrefecture': sousPrefecture,
    }.withoutNulls,
  );

  return firestoreData;
}

class AbonnementRecordDocumentEquality implements Equality<AbonnementRecord> {
  const AbonnementRecordDocumentEquality();

  @override
  bool equals(AbonnementRecord? e1, AbonnementRecord? e2) {
    return e1?.prefecture == e2?.prefecture &&
        e1?.motif == e2?.motif &&
        e1?.sousPrefecture == e2?.sousPrefecture;
  }

  @override
  int hash(AbonnementRecord? e) =>
      const ListEquality().hash([e?.prefecture, e?.motif, e?.sousPrefecture]);

  @override
  bool isValidKey(Object? o) => o is AbonnementRecord;
}
