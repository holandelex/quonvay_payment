import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'subscription_record.g.dart';

abstract class SubscriptionRecord
    implements Built<SubscriptionRecord, SubscriptionRecordBuilder> {
  static Serializer<SubscriptionRecord> get serializer =>
      _$subscriptionRecordSerializer;

  @BuiltValueField(wireName: 'sub_status')
  bool? get subStatus;

  @BuiltValueField(wireName: 'sub_package')
  DocumentReference? get subPackage;

  @BuiltValueField(wireName: 'sub_mileage_lite')
  int? get subMileageLite;

  @BuiltValueField(wireName: 'sub_mileage_amateur')
  int? get subMileageAmateur;

  @BuiltValueField(wireName: 'sub_mileage_professional')
  int? get subMileageProfessional;

  @BuiltValueField(wireName: 'sub_mileage_business')
  int? get subMileageBusiness;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SubscriptionRecordBuilder builder) => builder
    ..subStatus = false
    ..subMileageLite = 0
    ..subMileageAmateur = 0
    ..subMileageProfessional = 0
    ..subMileageBusiness = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subscription');

  static Stream<SubscriptionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SubscriptionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SubscriptionRecord._();
  factory SubscriptionRecord(
          [void Function(SubscriptionRecordBuilder) updates]) =
      _$SubscriptionRecord;

  static SubscriptionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSubscriptionRecordData({
  bool? subStatus,
  DocumentReference? subPackage,
  int? subMileageLite,
  int? subMileageAmateur,
  int? subMileageProfessional,
  int? subMileageBusiness,
}) {
  final firestoreData = serializers.toFirestore(
    SubscriptionRecord.serializer,
    SubscriptionRecord(
      (s) => s
        ..subStatus = subStatus
        ..subPackage = subPackage
        ..subMileageLite = subMileageLite
        ..subMileageAmateur = subMileageAmateur
        ..subMileageProfessional = subMileageProfessional
        ..subMileageBusiness = subMileageBusiness,
    ),
  );

  return firestoreData;
}
