// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubscriptionRecord> _$subscriptionRecordSerializer =
    new _$SubscriptionRecordSerializer();

class _$SubscriptionRecordSerializer
    implements StructuredSerializer<SubscriptionRecord> {
  @override
  final Iterable<Type> types = const [SubscriptionRecord, _$SubscriptionRecord];
  @override
  final String wireName = 'SubscriptionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SubscriptionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.subStatus;
    if (value != null) {
      result
        ..add('sub_status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.subPackage;
    if (value != null) {
      result
        ..add('sub_package')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.subMileageLite;
    if (value != null) {
      result
        ..add('sub_mileage_lite')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.subMileageAmateur;
    if (value != null) {
      result
        ..add('sub_mileage_amateur')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.subMileageProfessional;
    if (value != null) {
      result
        ..add('sub_mileage_professional')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.subMileageBusiness;
    if (value != null) {
      result
        ..add('sub_mileage_business')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  SubscriptionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubscriptionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sub_status':
          result.subStatus = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'sub_package':
          result.subPackage = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'sub_mileage_lite':
          result.subMileageLite = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sub_mileage_amateur':
          result.subMileageAmateur = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sub_mileage_professional':
          result.subMileageProfessional = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sub_mileage_business':
          result.subMileageBusiness = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$SubscriptionRecord extends SubscriptionRecord {
  @override
  final bool? subStatus;
  @override
  final DocumentReference<Object?>? subPackage;
  @override
  final int? subMileageLite;
  @override
  final int? subMileageAmateur;
  @override
  final int? subMileageProfessional;
  @override
  final int? subMileageBusiness;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SubscriptionRecord(
          [void Function(SubscriptionRecordBuilder)? updates]) =>
      (new SubscriptionRecordBuilder()..update(updates))._build();

  _$SubscriptionRecord._(
      {this.subStatus,
      this.subPackage,
      this.subMileageLite,
      this.subMileageAmateur,
      this.subMileageProfessional,
      this.subMileageBusiness,
      this.ffRef})
      : super._();

  @override
  SubscriptionRecord rebuild(
          void Function(SubscriptionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionRecordBuilder toBuilder() =>
      new SubscriptionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionRecord &&
        subStatus == other.subStatus &&
        subPackage == other.subPackage &&
        subMileageLite == other.subMileageLite &&
        subMileageAmateur == other.subMileageAmateur &&
        subMileageProfessional == other.subMileageProfessional &&
        subMileageBusiness == other.subMileageBusiness &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, subStatus.hashCode), subPackage.hashCode),
                        subMileageLite.hashCode),
                    subMileageAmateur.hashCode),
                subMileageProfessional.hashCode),
            subMileageBusiness.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionRecord')
          ..add('subStatus', subStatus)
          ..add('subPackage', subPackage)
          ..add('subMileageLite', subMileageLite)
          ..add('subMileageAmateur', subMileageAmateur)
          ..add('subMileageProfessional', subMileageProfessional)
          ..add('subMileageBusiness', subMileageBusiness)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SubscriptionRecordBuilder
    implements Builder<SubscriptionRecord, SubscriptionRecordBuilder> {
  _$SubscriptionRecord? _$v;

  bool? _subStatus;
  bool? get subStatus => _$this._subStatus;
  set subStatus(bool? subStatus) => _$this._subStatus = subStatus;

  DocumentReference<Object?>? _subPackage;
  DocumentReference<Object?>? get subPackage => _$this._subPackage;
  set subPackage(DocumentReference<Object?>? subPackage) =>
      _$this._subPackage = subPackage;

  int? _subMileageLite;
  int? get subMileageLite => _$this._subMileageLite;
  set subMileageLite(int? subMileageLite) =>
      _$this._subMileageLite = subMileageLite;

  int? _subMileageAmateur;
  int? get subMileageAmateur => _$this._subMileageAmateur;
  set subMileageAmateur(int? subMileageAmateur) =>
      _$this._subMileageAmateur = subMileageAmateur;

  int? _subMileageProfessional;
  int? get subMileageProfessional => _$this._subMileageProfessional;
  set subMileageProfessional(int? subMileageProfessional) =>
      _$this._subMileageProfessional = subMileageProfessional;

  int? _subMileageBusiness;
  int? get subMileageBusiness => _$this._subMileageBusiness;
  set subMileageBusiness(int? subMileageBusiness) =>
      _$this._subMileageBusiness = subMileageBusiness;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SubscriptionRecordBuilder() {
    SubscriptionRecord._initializeBuilder(this);
  }

  SubscriptionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subStatus = $v.subStatus;
      _subPackage = $v.subPackage;
      _subMileageLite = $v.subMileageLite;
      _subMileageAmateur = $v.subMileageAmateur;
      _subMileageProfessional = $v.subMileageProfessional;
      _subMileageBusiness = $v.subMileageBusiness;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubscriptionRecord;
  }

  @override
  void update(void Function(SubscriptionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionRecord build() => _build();

  _$SubscriptionRecord _build() {
    final _$result = _$v ??
        new _$SubscriptionRecord._(
            subStatus: subStatus,
            subPackage: subPackage,
            subMileageLite: subMileageLite,
            subMileageAmateur: subMileageAmateur,
            subMileageProfessional: subMileageProfessional,
            subMileageBusiness: subMileageBusiness,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
