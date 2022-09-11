import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

LatLng getUsersLocation(LatLng? userLocation) {
  if (userLocation == null ||
      (userLocation.latitude == 0 && userLocation.longitude == 0)) {
    return LatLng(40.8295538, -73.9386429);
  }
  return userLocation;
}

double mileageBalance(
  double? topup,
  double? subscribe,
  double? cost,
) {
  // sum of three numbers
  return topup! + subscribe! - cost!;
}

double calculateDistance(
  LatLng? latlon1,
  LatLng? latlon2,
) {
  double lat1 = latlon1!.latitude;
  double lon1 = latlon1.longitude;
  double lat2 = latlon2!.latitude;
  double lon2 = latlon2.longitude;
  var p = 0.017453292519943295;
  var c = math.cos;
  var a = 0.5 -
      c((lat2 - lat1) * p) / 2 +
      c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
  // Returns distance in Kilo-meters
  var d = (12742 * math.asin(math.sqrt(a)));
  String inString = d.toStringAsFixed(2); // '2.35'
  double inDouble = double.parse(inString);
  return inDouble;
}

double ngnToKm(double? ngn) {
  return ngn! * 0.0008;
}
