import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'account_record.g.dart';

abstract class AccountRecord
    implements Built<AccountRecord, AccountRecordBuilder> {
  static Serializer<AccountRecord> get serializer => _$accountRecordSerializer;

  @BuiltValueField(wireName: 'mileage_balance')
  double? get mileageBalance;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AccountRecordBuilder builder) =>
      builder..mileageBalance = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('account');

  static Stream<AccountRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AccountRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AccountRecord._();
  factory AccountRecord([void Function(AccountRecordBuilder) updates]) =
      _$AccountRecord;

  static AccountRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAccountRecordData({
  double? mileageBalance,
}) {
  final firestoreData = serializers.toFirestore(
    AccountRecord.serializer,
    AccountRecord(
      (a) => a..mileageBalance = mileageBalance,
    ),
  );

  return firestoreData;
}
