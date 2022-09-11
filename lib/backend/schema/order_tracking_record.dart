import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'order_tracking_record.g.dart';

abstract class OrderTrackingRecord
    implements Built<OrderTrackingRecord, OrderTrackingRecordBuilder> {
  static Serializer<OrderTrackingRecord> get serializer =>
      _$orderTrackingRecordSerializer;

  @BuiltValueField(wireName: 'order_id')
  String? get orderId;

  @BuiltValueField(wireName: 'order_intransit')
  bool? get orderIntransit;

  @BuiltValueField(wireName: 'order_pickedup')
  bool? get orderPickedup;

  @BuiltValueField(wireName: 'order_enroute')
  bool? get orderEnroute;

  @BuiltValueField(wireName: 'order_delivered')
  bool? get orderDelivered;

  @BuiltValueField(wireName: 'order_list')
  BuiltList<String>? get orderList;

  @BuiltValueField(wireName: 'order_mileage_cost')
  int? get orderMileageCost;

  @BuiltValueField(wireName: 'order_timestamp')
  DateTime? get orderTimestamp;

  @BuiltValueField(wireName: 'order_headingToPickup')
  bool? get orderHeadingToPickup;

  @BuiltValueField(wireName: 'order_pending')
  bool? get orderPending;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrderTrackingRecordBuilder builder) => builder
    ..orderId = ''
    ..orderIntransit = false
    ..orderPickedup = false
    ..orderEnroute = false
    ..orderDelivered = false
    ..orderList = ListBuilder()
    ..orderMileageCost = 0
    ..orderHeadingToPickup = false
    ..orderPending = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orderTracking');

  static Stream<OrderTrackingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrderTrackingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrderTrackingRecord._();
  factory OrderTrackingRecord(
          [void Function(OrderTrackingRecordBuilder) updates]) =
      _$OrderTrackingRecord;

  static OrderTrackingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrderTrackingRecordData({
  String? orderId,
  bool? orderIntransit,
  bool? orderPickedup,
  bool? orderEnroute,
  bool? orderDelivered,
  int? orderMileageCost,
  DateTime? orderTimestamp,
  bool? orderHeadingToPickup,
  bool? orderPending,
}) {
  final firestoreData = serializers.toFirestore(
    OrderTrackingRecord.serializer,
    OrderTrackingRecord(
      (o) => o
        ..orderId = orderId
        ..orderIntransit = orderIntransit
        ..orderPickedup = orderPickedup
        ..orderEnroute = orderEnroute
        ..orderDelivered = orderDelivered
        ..orderList = null
        ..orderMileageCost = orderMileageCost
        ..orderTimestamp = orderTimestamp
        ..orderHeadingToPickup = orderHeadingToPickup
        ..orderPending = orderPending,
    ),
  );

  return firestoreData;
}
