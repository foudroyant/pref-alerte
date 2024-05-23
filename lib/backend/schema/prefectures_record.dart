import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PrefecturesRecord extends FirestoreRecord {
  PrefecturesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "prefecture" field.
  String? _prefecture;
  String get prefecture => _prefecture ?? '';
  bool hasPrefecture() => _prefecture != null;

  // "sousPref" field.
  String? _sousPref;
  String get sousPref => _sousPref ?? '';
  bool hasSousPref() => _sousPref != null;

  // "indicatif" field.
  String? _indicatif;
  String get indicatif => _indicatif ?? '';
  bool hasIndicatif() => _indicatif != null;

  // "motifs" field.
  List<MotifStruct>? _motifs;
  List<MotifStruct> get motifs => _motifs ?? const [];
  bool hasMotifs() => _motifs != null;

  void _initializeFields() {
    _prefecture = snapshotData['prefecture'] as String?;
    _sousPref = snapshotData['sousPref'] as String?;
    _indicatif = snapshotData['indicatif'] as String?;
    _motifs = getStructList(
      snapshotData['motifs'],
      MotifStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prefectures');

  static Stream<PrefecturesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PrefecturesRecord.fromSnapshot(s));

  static Future<PrefecturesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PrefecturesRecord.fromSnapshot(s));

  static PrefecturesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PrefecturesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PrefecturesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PrefecturesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PrefecturesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PrefecturesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPrefecturesRecordData({
  String? prefecture,
  String? sousPref,
  String? indicatif,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'prefecture': prefecture,
      'sousPref': sousPref,
      'indicatif': indicatif,
    }.withoutNulls,
  );

  return firestoreData;
}

class PrefecturesRecordDocumentEquality implements Equality<PrefecturesRecord> {
  const PrefecturesRecordDocumentEquality();

  @override
  bool equals(PrefecturesRecord? e1, PrefecturesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.prefecture == e2?.prefecture &&
        e1?.sousPref == e2?.sousPref &&
        e1?.indicatif == e2?.indicatif &&
        listEquality.equals(e1?.motifs, e2?.motifs);
  }

  @override
  int hash(PrefecturesRecord? e) => const ListEquality()
      .hash([e?.prefecture, e?.sousPref, e?.indicatif, e?.motifs]);

  @override
  bool isValidKey(Object? o) => o is PrefecturesRecord;
}
