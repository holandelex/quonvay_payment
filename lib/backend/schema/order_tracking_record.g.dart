// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_tracking_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderTrackingRecord> _$orderTrackingRecordSerializer =
    new _$OrderTrackingRecordSerializer();

class _$OrderTrackingRecordSerializer
    implements StructuredSerializer<OrderTrackingRecord> {
  @override
  final Iterable<Type> types = const [
    OrderTrackingRecord,
    _$OrderTrackingRecord
  ];
  @override
  final String wireName = 'OrderTrackingRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, OrderTrackingRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.orderId;
    if (value != null) {
      result
        ..add('order_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderIntransit;
    if (value != null) {
      result
        ..add('order_intransit')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.orderPickedup;
    if (value != null) {
      result
        ..add('order_pickedup')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.orderEnroute;
    if (value != null) {
      result
        ..add('order_enroute')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.orderDelivered;
    if (value != null) {
      result
        ..add('order_delivered')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.orderList;
    if (value != null) {
      result
        ..add('order_list')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.orderMileageCost;
    if (value != null) {
      result
        ..add('order_mileage_cost')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.orderTimestamp;
    if (value != null) {
      result
        ..add('order_timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.orderHeadingToPickup;
    if (value != null) {
      result
        ..add('order_headingToPickup')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.orderPending;
    if (value != null) {
      result
        ..add('order_pending')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  OrderTrackingRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderTrackingRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'order_id':
          result.orderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'order_intransit':
          result.orderIntransit = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'order_pickedup':
          result.orderPickedup = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'order_enroute':
          result.orderEnroute = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'order_delivered':
          result.orderDelivered = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'order_list':
          result.orderList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'order_mileage_cost':
          result.orderMileageCost = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'order_timestamp':
          result.orderTimestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'order_headingToPickup':
          result.orderHeadingToPickup = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'order_pending':
          result.orderPending = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$OrderTrackingRecord extends OrderTrackingRecord {
  @override
  final String? orderId;
  @override
  final bool? orderIntransit;
  @override
  final bool? orderPickedup;
  @override
  final bool? orderEnroute;
  @override
  final bool? orderDelivered;
  @override
  final BuiltList<String>? orderList;
  @override
  final int? orderMileageCost;
  @override
  final DateTime? orderTimestamp;
  @override
  final bool? orderHeadingToPickup;
  @override
  final bool? orderPending;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrderTrackingRecord(
          [void Function(OrderTrackingRecordBuilder)? updates]) =>
      (new OrderTrackingRecordBuilder()..update(updates))._build();

  _$OrderTrackingRecord._(
      {this.orderId,
      this.orderIntransit,
      this.orderPickedup,
      this.orderEnroute,
      this.orderDelivered,
      this.orderList,
      this.orderMileageCost,
      this.orderTimestamp,
      this.orderHeadingToPickup,
      this.orderPending,
      this.ffRef})
      : super._();

  @override
  OrderTrackingRecord rebuild(
          void Function(OrderTrackingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderTrackingRecordBuilder toBuilder() =>
      new OrderTrackingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderTrackingRecord &&
        orderId == other.orderId &&
        orderIntransit == other.orderIntransit &&
        orderPickedup == other.orderPickedup &&
        orderEnroute == other.orderEnroute &&
        orderDelivered == other.orderDelivered &&
        orderList == other.orderList &&
        orderMileageCost == other.orderMileageCost &&
        orderTimestamp == other.orderTimestamp &&
        orderHeadingToPickup == other.orderHeadingToPickup &&
        orderPending == other.orderPending &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, orderId.hashCode),
                                            orderIntransit.hashCode),
                                        orderPickedup.hashCode),
                                    orderEnroute.hashCode),
                                orderDelivered.hashCode),
                            orderList.hashCode),
                        orderMileageCost.hashCode),
                    orderTimestamp.hashCode),
                orderHeadingToPickup.hashCode),
            orderPending.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderTrackingRecord')
          ..add('orderId', orderId)
          ..add('orderIntransit', orderIntransit)
          ..add('orderPickedup', orderPickedup)
          ..add('orderEnroute', orderEnroute)
          ..add('orderDelivered', orderDelivered)
          ..add('orderList', orderList)
          ..add('orderMileageCost', orderMileageCost)
          ..add('orderTimestamp', orderTimestamp)
          ..add('orderHeadingToPickup', orderHeadingToPickup)
          ..add('orderPending', orderPending)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrderTrackingRecordBuilder
    implements Builder<OrderTrackingRecord, OrderTrackingRecordBuilder> {
  _$OrderTrackingRecord? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  bool? _orderIntransit;
  bool? get orderIntransit => _$this._orderIntransit;
  set orderIntransit(bool? orderIntransit) =>
      _$this._orderIntransit = orderIntransit;

  bool? _orderPickedup;
  bool? get orderPickedup => _$this._orderPickedup;
  set orderPickedup(bool? orderPickedup) =>
      _$this._orderPickedup = orderPickedup;

  bool? _orderEnroute;
  bool? get orderEnroute => _$this._orderEnroute;
  set orderEnroute(bool? orderEnroute) => _$this._orderEnroute = orderEnroute;

  bool? _orderDelivered;
  bool? get orderDelivered => _$this._orderDelivered;
  set orderDelivered(bool? orderDelivered) =>
      _$this._orderDelivered = orderDelivered;

  ListBuilder<String>? _orderList;
  ListBuilder<String> get orderList =>
      _$this._orderList ??= new ListBuilder<String>();
  set orderList(ListBuilder<String>? orderList) =>
      _$this._orderList = orderList;

  int? _orderMileageCost;
  int? get orderMileageCost => _$this._orderMileageCost;
  set orderMileageCost(int? orderMileageCost) =>
      _$this._orderMileageCost = orderMileageCost;

  DateTime? _orderTimestamp;
  DateTime? get orderTimestamp => _$this._orderTimestamp;
  set orderTimestamp(DateTime? orderTimestamp) =>
      _$this._orderTimestamp = orderTimestamp;

  bool? _orderHeadingToPickup;
  bool? get orderHeadingToPickup => _$this._orderHeadingToPickup;
  set orderHeadingToPickup(bool? orderHeadingToPickup) =>
      _$this._orderHeadingToPickup = orderHeadingToPickup;

  bool? _orderPending;
  bool? get orderPending => _$this._orderPending;
  set orderPending(bool? orderPending) => _$this._orderPending = orderPending;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrderTrackingRecordBuilder() {
    OrderTrackingRecord._initializeBuilder(this);
  }

  OrderTrackingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _orderIntransit = $v.orderIntransit;
      _orderPickedup = $v.orderPickedup;
      _orderEnroute = $v.orderEnroute;
      _orderDelivered = $v.orderDelivered;
      _orderList = $v.orderList?.toBuilder();
      _orderMileageCost = $v.orderMileageCost;
      _orderTimestamp = $v.orderTimestamp;
      _orderHeadingToPickup = $v.orderHeadingToPickup;
      _orderPending = $v.orderPending;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderTrackingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderTrackingRecord;
  }

  @override
  void update(void Function(OrderTrackingRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderTrackingRecord build() => _build();

  _$OrderTrackingRecord _build() {
    _$OrderTrackingRecord _$result;
    try {
      _$result = _$v ??
          new _$OrderTrackingRecord._(
              orderId: orderId,
              orderIntransit: orderIntransit,
              orderPickedup: orderPickedup,
              orderEnroute: orderEnroute,
              orderDelivered: orderDelivered,
              orderList: _orderList?.build(),
              orderMileageCost: orderMileageCost,
              orderTimestamp: orderTimestamp,
              orderHeadingToPickup: orderHeadingToPickup,
              orderPending: orderPending,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orderList';
        _orderList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrderTrackingRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
