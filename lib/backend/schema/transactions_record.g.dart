// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionsRecord> _$transactionsRecordSerializer =
    new _$TransactionsRecordSerializer();

class _$TransactionsRecordSerializer
    implements StructuredSerializer<TransactionsRecord> {
  @override
  final Iterable<Type> types = const [TransactionsRecord, _$TransactionsRecord];
  @override
  final String wireName = 'TransactionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TransactionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.mileagePurchased;
    if (value != null) {
      result
        ..add('mileage_purchased')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.transactionTimestamp;
    if (value != null) {
      result
        ..add('transaction_timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  TransactionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'mileage_purchased':
          result.mileagePurchased = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'transaction_timestamp':
          result.transactionTimestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$TransactionsRecord extends TransactionsRecord {
  @override
  final double? amount;
  @override
  final double? mileagePurchased;
  @override
  final DateTime? transactionTimestamp;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TransactionsRecord(
          [void Function(TransactionsRecordBuilder)? updates]) =>
      (new TransactionsRecordBuilder()..update(updates))._build();

  _$TransactionsRecord._(
      {this.amount,
      this.mileagePurchased,
      this.transactionTimestamp,
      this.ffRef})
      : super._();

  @override
  TransactionsRecord rebuild(
          void Function(TransactionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionsRecordBuilder toBuilder() =>
      new TransactionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionsRecord &&
        amount == other.amount &&
        mileagePurchased == other.mileagePurchased &&
        transactionTimestamp == other.transactionTimestamp &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, amount.hashCode), mileagePurchased.hashCode),
            transactionTimestamp.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionsRecord')
          ..add('amount', amount)
          ..add('mileagePurchased', mileagePurchased)
          ..add('transactionTimestamp', transactionTimestamp)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TransactionsRecordBuilder
    implements Builder<TransactionsRecord, TransactionsRecordBuilder> {
  _$TransactionsRecord? _$v;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  double? _mileagePurchased;
  double? get mileagePurchased => _$this._mileagePurchased;
  set mileagePurchased(double? mileagePurchased) =>
      _$this._mileagePurchased = mileagePurchased;

  DateTime? _transactionTimestamp;
  DateTime? get transactionTimestamp => _$this._transactionTimestamp;
  set transactionTimestamp(DateTime? transactionTimestamp) =>
      _$this._transactionTimestamp = transactionTimestamp;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TransactionsRecordBuilder() {
    TransactionsRecord._initializeBuilder(this);
  }

  TransactionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _mileagePurchased = $v.mileagePurchased;
      _transactionTimestamp = $v.transactionTimestamp;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionsRecord;
  }

  @override
  void update(void Function(TransactionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionsRecord build() => _build();

  _$TransactionsRecord _build() {
    final _$result = _$v ??
        new _$TransactionsRecord._(
            amount: amount,
            mileagePurchased: mileagePurchased,
            transactionTimestamp: transactionTimestamp,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
