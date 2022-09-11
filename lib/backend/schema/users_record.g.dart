// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.userTitle;
    if (value != null) {
      result
        ..add('userTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userLandmark;
    if (value != null) {
      result
        ..add('user_landmark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.busStop;
    if (value != null) {
      result
        ..add('bus_stop')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mileageBalance;
    if (value != null) {
      result
        ..add('mileage_balance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.mileageCost;
    if (value != null) {
      result
        ..add('mileage_cost')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.pushNotification;
    if (value != null) {
      result
        ..add('push_notification')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.emailNotification;
    if (value != null) {
      result
        ..add('email_notification')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.locationServices;
    if (value != null) {
      result
        ..add('location_services')
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'userTitle':
          result.userTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_landmark':
          result.userLandmark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bus_stop':
          result.busStop = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mileage_balance':
          result.mileageBalance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'mileage_cost':
          result.mileageCost = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'push_notification':
          result.pushNotification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'email_notification':
          result.emailNotification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'location_services':
          result.locationServices = serializers.deserialize(value,
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? displayName;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? uid;
  @override
  final int? age;
  @override
  final LatLng? location;
  @override
  final String? phoneNumber;
  @override
  final String? photoUrl;
  @override
  final DateTime? createdTime;
  @override
  final String? userTitle;
  @override
  final String? address;
  @override
  final String? userLandmark;
  @override
  final String? busStop;
  @override
  final double? mileageBalance;
  @override
  final double? mileageCost;
  @override
  final bool? pushNotification;
  @override
  final bool? emailNotification;
  @override
  final bool? locationServices;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.displayName,
      this.email,
      this.password,
      this.uid,
      this.age,
      this.location,
      this.phoneNumber,
      this.photoUrl,
      this.createdTime,
      this.userTitle,
      this.address,
      this.userLandmark,
      this.busStop,
      this.mileageBalance,
      this.mileageCost,
      this.pushNotification,
      this.emailNotification,
      this.locationServices,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        displayName == other.displayName &&
        email == other.email &&
        password == other.password &&
        uid == other.uid &&
        age == other.age &&
        location == other.location &&
        phoneNumber == other.phoneNumber &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        userTitle == other.userTitle &&
        address == other.address &&
        userLandmark == other.userLandmark &&
        busStop == other.busStop &&
        mileageBalance == other.mileageBalance &&
        mileageCost == other.mileageCost &&
        pushNotification == other.pushNotification &&
        emailNotification == other.emailNotification &&
        locationServices == other.locationServices &&
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(0,
                                                                                displayName.hashCode),
                                                                            email.hashCode),
                                                                        password.hashCode),
                                                                    uid.hashCode),
                                                                age.hashCode),
                                                            location.hashCode),
                                                        phoneNumber.hashCode),
                                                    photoUrl.hashCode),
                                                createdTime.hashCode),
                                            userTitle.hashCode),
                                        address.hashCode),
                                    userLandmark.hashCode),
                                busStop.hashCode),
                            mileageBalance.hashCode),
                        mileageCost.hashCode),
                    pushNotification.hashCode),
                emailNotification.hashCode),
            locationServices.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('password', password)
          ..add('uid', uid)
          ..add('age', age)
          ..add('location', location)
          ..add('phoneNumber', phoneNumber)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('userTitle', userTitle)
          ..add('address', address)
          ..add('userLandmark', userLandmark)
          ..add('busStop', busStop)
          ..add('mileageBalance', mileageBalance)
          ..add('mileageCost', mileageCost)
          ..add('pushNotification', pushNotification)
          ..add('emailNotification', emailNotification)
          ..add('locationServices', locationServices)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _userTitle;
  String? get userTitle => _$this._userTitle;
  set userTitle(String? userTitle) => _$this._userTitle = userTitle;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _userLandmark;
  String? get userLandmark => _$this._userLandmark;
  set userLandmark(String? userLandmark) => _$this._userLandmark = userLandmark;

  String? _busStop;
  String? get busStop => _$this._busStop;
  set busStop(String? busStop) => _$this._busStop = busStop;

  double? _mileageBalance;
  double? get mileageBalance => _$this._mileageBalance;
  set mileageBalance(double? mileageBalance) =>
      _$this._mileageBalance = mileageBalance;

  double? _mileageCost;
  double? get mileageCost => _$this._mileageCost;
  set mileageCost(double? mileageCost) => _$this._mileageCost = mileageCost;

  bool? _pushNotification;
  bool? get pushNotification => _$this._pushNotification;
  set pushNotification(bool? pushNotification) =>
      _$this._pushNotification = pushNotification;

  bool? _emailNotification;
  bool? get emailNotification => _$this._emailNotification;
  set emailNotification(bool? emailNotification) =>
      _$this._emailNotification = emailNotification;

  bool? _locationServices;
  bool? get locationServices => _$this._locationServices;
  set locationServices(bool? locationServices) =>
      _$this._locationServices = locationServices;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _email = $v.email;
      _password = $v.password;
      _uid = $v.uid;
      _age = $v.age;
      _location = $v.location;
      _phoneNumber = $v.phoneNumber;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _userTitle = $v.userTitle;
      _address = $v.address;
      _userLandmark = $v.userLandmark;
      _busStop = $v.busStop;
      _mileageBalance = $v.mileageBalance;
      _mileageCost = $v.mileageCost;
      _pushNotification = $v.pushNotification;
      _emailNotification = $v.emailNotification;
      _locationServices = $v.locationServices;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            displayName: displayName,
            email: email,
            password: password,
            uid: uid,
            age: age,
            location: location,
            phoneNumber: phoneNumber,
            photoUrl: photoUrl,
            createdTime: createdTime,
            userTitle: userTitle,
            address: address,
            userLandmark: userLandmark,
            busStop: busStop,
            mileageBalance: mileageBalance,
            mileageCost: mileageCost,
            pushNotification: pushNotification,
            emailNotification: emailNotification,
            locationServices: locationServices,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
