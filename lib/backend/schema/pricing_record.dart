import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PricingRecord extends FirestoreRecord {
  PricingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "plan" field.
  String? _plan;
  String get plan => _plan ?? '';
  bool hasPlan() => _plan != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "prix" field.
  double? _prix;
  double get prix => _prix ?? 0.0;
  bool hasPrix() => _prix != null;

  // "descriptions" field.
  List<DescriptionStruct>? _descriptions;
  List<DescriptionStruct> get descriptions => _descriptions ?? const [];
  bool hasDescriptions() => _descriptions != null;

  void _initializeFields() {
    _plan = snapshotData['plan'] as String?;
    _details = snapshotData['details'] as String?;
    _prix = castToType<double>(snapshotData['prix']);
    _descriptions = getStructList(
      snapshotData['descriptions'],
      DescriptionStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pricing');

  static Stream<PricingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PricingRecord.fromSnapshot(s));

  static Future<PricingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PricingRecord.fromSnapshot(s));

  static PricingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PricingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PricingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PricingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PricingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PricingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPricingRecordData({
  String? plan,
  String? details,
  double? prix,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'plan': plan,
      'details': details,
      'prix': prix,
    }.withoutNulls,
  );

  return firestoreData;
}

class PricingRecordDocumentEquality implements Equality<PricingRecord> {
  const PricingRecordDocumentEquality();

  @override
  bool equals(PricingRecord? e1, PricingRecord? e2) {
    const listEquality = ListEquality();
    return e1?.plan == e2?.plan &&
        e1?.details == e2?.details &&
        e1?.prix == e2?.prix &&
        listEquality.equals(e1?.descriptions, e2?.descriptions);
  }

  @override
  int hash(PricingRecord? e) => const ListEquality()
      .hash([e?.plan, e?.details, e?.prix, e?.descriptions]);

  @override
  bool isValidKey(Object? o) => o is PricingRecord;
}
