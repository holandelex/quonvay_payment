import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get email;

  String? get password;

  String? get uid;

  int? get age;

  LatLng? get location;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get userTitle;

  String? get address;

  @BuiltValueField(wireName: 'user_landmark')
  String? get userLandmark;

  @BuiltValueField(wireName: 'bus_stop')
  String? get busStop;

  @BuiltValueField(wireName: 'mileage_balance')
  double? get mileageBalance;

  @BuiltValueField(wireName: 'mileage_cost')
  double? get mileageCost;

  @BuiltValueField(wireName: 'push_notification')
  bool? get pushNotification;

  @BuiltValueField(wireName: 'email_notification')
  bool? get emailNotification;

  @BuiltValueField(wireName: 'location_services')
  bool? get locationServices;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..displayName = ''
    ..email = ''
    ..password = ''
    ..uid = ''
    ..age = 0
    ..phoneNumber = ''
    ..photoUrl = ''
    ..userTitle = ''
    ..address = ''
    ..userLandmark = ''
    ..busStop = ''
    ..mileageBalance = 0.0
    ..mileageCost = 0.0
    ..pushNotification = false
    ..emailNotification = false
    ..locationServices = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? displayName,
  String? email,
  String? password,
  String? uid,
  int? age,
  LatLng? location,
  String? phoneNumber,
  String? photoUrl,
  DateTime? createdTime,
  String? userTitle,
  String? address,
  String? userLandmark,
  String? busStop,
  double? mileageBalance,
  double? mileageCost,
  bool? pushNotification,
  bool? emailNotification,
  bool? locationServices,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..displayName = displayName
        ..email = email
        ..password = password
        ..uid = uid
        ..age = age
        ..location = location
        ..phoneNumber = phoneNumber
        ..photoUrl = photoUrl
        ..createdTime = createdTime
        ..userTitle = userTitle
        ..address = address
        ..userLandmark = userLandmark
        ..busStop = busStop
        ..mileageBalance = mileageBalance
        ..mileageCost = mileageCost
        ..pushNotification = pushNotification
        ..emailNotification = emailNotification
        ..locationServices = locationServices,
    ),
  );

  return firestoreData;
}
