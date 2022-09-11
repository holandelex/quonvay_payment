import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'book_order_record.g.dart';

abstract class BookOrderRecord
    implements Built<BookOrderRecord, BookOrderRecordBuilder> {
  static Serializer<BookOrderRecord> get serializer =>
      _$bookOrderRecordSerializer;

  @BuiltValueField(wireName: 'sender_name')
  String? get senderName;

  @BuiltValueField(wireName: 'sender_email')
  String? get senderEmail;

  @BuiltValueField(wireName: 'sender_phone')
  int? get senderPhone;

  @BuiltValueField(wireName: 'sender_address')
  String? get senderAddress;

  @BuiltValueField(wireName: 'sender_location')
  LatLng? get senderLocation;

  @BuiltValueField(wireName: 'sender_landmark')
  String? get senderLandmark;

  @BuiltValueField(wireName: 'receiver_name')
  String? get receiverName;

  @BuiltValueField(wireName: 'receiver_email')
  String? get receiverEmail;

  @BuiltValueField(wireName: 'receiver_phone')
  int? get receiverPhone;

  @BuiltValueField(wireName: 'receiver_address')
  String? get receiverAddress;

  @BuiltValueField(wireName: 'receiver_location')
  LatLng? get receiverLocation;

  @BuiltValueField(wireName: 'receiver_landmark')
  String? get receiverLandmark;

  @BuiltValueField(wireName: 'order_timestamp')
  DateTime? get orderTimestamp;

  @BuiltValueField(wireName: 'order_mileage_cost')
  double? get orderMileageCost;

  @BuiltValueField(wireName: 'food_category')
  bool? get foodCategory;

  @BuiltValueField(wireName: 'clothing_category')
  bool? get clothingCategory;

  @BuiltValueField(wireName: 'shoes_category')
  bool? get shoesCategory;

  @BuiltValueField(wireName: 'electronics_category')
  bool? get electronicsCategory;

  @BuiltValueField(wireName: 'jewaccess_category')
  bool? get jewaccessCategory;

  @BuiltValueField(wireName: 'documents_category')
  bool? get documentsCategory;

  @BuiltValueField(wireName: 'other_category')
  bool? get otherCategory;

  @BuiltValueField(wireName: 'order_id')
  String? get orderId;

  @BuiltValueField(wireName: 'booker_id')
  String? get bookerId;

  @BuiltValueField(wireName: 'order_status')
  String? get orderStatus;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BookOrderRecordBuilder builder) => builder
    ..senderName = ''
    ..senderEmail = ''
    ..senderPhone = 0
    ..senderAddress = ''
    ..senderLandmark = ''
    ..receiverName = ''
    ..receiverEmail = ''
    ..receiverPhone = 0
    ..receiverAddress = ''
    ..receiverLandmark = ''
    ..orderMileageCost = 0.0
    ..foodCategory = false
    ..clothingCategory = false
    ..shoesCategory = false
    ..electronicsCategory = false
    ..jewaccessCategory = false
    ..documentsCategory = false
    ..otherCategory = false
    ..orderId = ''
    ..bookerId = ''
    ..orderStatus = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookOrder');

  static Stream<BookOrderRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BookOrderRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BookOrderRecord._();
  factory BookOrderRecord([void Function(BookOrderRecordBuilder) updates]) =
      _$BookOrderRecord;

  static BookOrderRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBookOrderRecordData({
  String? senderName,
  String? senderEmail,
  int? senderPhone,
  String? senderAddress,
  LatLng? senderLocation,
  String? senderLandmark,
  String? receiverName,
  String? receiverEmail,
  int? receiverPhone,
  String? receiverAddress,
  LatLng? receiverLocation,
  String? receiverLandmark,
  DateTime? orderTimestamp,
  double? orderMileageCost,
  bool? foodCategory,
  bool? clothingCategory,
  bool? shoesCategory,
  bool? electronicsCategory,
  bool? jewaccessCategory,
  bool? documentsCategory,
  bool? otherCategory,
  String? orderId,
  String? bookerId,
  String? orderStatus,
}) {
  final firestoreData = serializers.toFirestore(
    BookOrderRecord.serializer,
    BookOrderRecord(
      (b) => b
        ..senderName = senderName
        ..senderEmail = senderEmail
        ..senderPhone = senderPhone
        ..senderAddress = senderAddress
        ..senderLocation = senderLocation
        ..senderLandmark = senderLandmark
        ..receiverName = receiverName
        ..receiverEmail = receiverEmail
        ..receiverPhone = receiverPhone
        ..receiverAddress = receiverAddress
        ..receiverLocation = receiverLocation
        ..receiverLandmark = receiverLandmark
        ..orderTimestamp = orderTimestamp
        ..orderMileageCost = orderMileageCost
        ..foodCategory = foodCategory
        ..clothingCategory = clothingCategory
        ..shoesCategory = shoesCategory
        ..electronicsCategory = electronicsCategory
        ..jewaccessCategory = jewaccessCategory
        ..documentsCategory = documentsCategory
        ..otherCategory = otherCategory
        ..orderId = orderId
        ..bookerId = bookerId
        ..orderStatus = orderStatus,
    ),
  );

  return firestoreData;
}
