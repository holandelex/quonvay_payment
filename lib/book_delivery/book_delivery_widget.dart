import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../booking_complete/booking_complete_widget.dart';
import '../flutter_flow/flutter_flow_place_picker.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/place.dart';
import 'dart:io';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDeliveryWidget extends StatefulWidget {
  const BookDeliveryWidget({
    Key? key,
    this.mileageParam,
  }) : super(key: key);

  final double? mileageParam;

  @override
  _BookDeliveryWidgetState createState() => _BookDeliveryWidgetState();
}

class _BookDeliveryWidgetState extends State<BookDeliveryWidget> {
  TextEditingController? receiverFullAddressController;

  TextEditingController? receiverNameController;

  TextEditingController? receiverPhoneNumberController;

  TextEditingController? senderFullAddressController;

  TextEditingController? senderNameController;

  TextEditingController? senderPhoneNumberController;

  var senderLocationValue = FFPlace();
  var receiverLocationValue = FFPlace();
  bool? foodCategoryValue;
  bool? clothingCategoryValue;
  bool? shoesCategoryValue;
  bool? electronicsCategoryValue;
  bool? jewaccessCategoryValue;
  bool? docsCategoryValue;
  bool? otherCategoryValue;
  BookOrderRecord? bookOrderRef;
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'bookDelivery'});
    receiverFullAddressController = TextEditingController();
    receiverNameController = TextEditingController();
    receiverPhoneNumberController = TextEditingController();
    senderFullAddressController = TextEditingController();
    senderNameController = TextEditingController();
    senderPhoneNumberController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitFadingGrid(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        final bookDeliveryUsersRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).background,
            automaticallyImplyLeading: false,
            title: Text(
              'Book Delivery',
              style: FlutterFlowTheme.of(context).title1,
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.of(context).background,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Divider(
                    thickness: 2,
                    indent: 30,
                    endIndent: 30,
                    color: FlutterFlowTheme.of(context).grayDark,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'Sender Info',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                    child: FlutterFlowPlacePicker(
                      iOSGoogleMapsApiKey:
                          'AIzaSyBYGH1CPSqgNNIHlczkSOH6OZvBIIJUwNg',
                      androidGoogleMapsApiKey:
                          'AIzaSyB2v-1CKYKI5Jdwq2HNk7tnTYt_iyzGHx4',
                      webGoogleMapsApiKey:
                          'AIzaSyDLtpQGSQ36MHLuGujSuUfNdIoO7McxH6k',
                      onSelect: (place) async {
                        setState(() => senderLocationValue = place);
                      },
                      defaultText: 'Tap Here To Set Pickup Location',
                      icon: Icon(
                        Icons.place,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 16,
                      ),
                      buttonOptions: FFButtonOptions(
                        height: 60,
                        color: FlutterFlowTheme.of(context).darkBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Form(
                      key: formKey2,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                            child: TextFormField(
                              controller: senderFullAddressController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                hintText: 'Sender Full Address',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .grayLight,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).darkBackground,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.multiline,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return 'Field is required';
                                }

                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                            child: TextFormField(
                              controller: senderNameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                hintText: 'Sender Name',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .grayLight,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).darkBackground,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.name,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return 'Field is required';
                                }

                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                            child: TextFormField(
                              controller: senderPhoneNumberController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                hintText: 'Sender Phone Number',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .grayLight,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).darkBackground,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.phone,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return 'Field is required';
                                }

                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    indent: 30,
                    endIndent: 30,
                    color: FlutterFlowTheme.of(context).grayDark,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'Receiver Info',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                    child: FlutterFlowPlacePicker(
                      iOSGoogleMapsApiKey:
                          'AIzaSyBYGH1CPSqgNNIHlczkSOH6OZvBIIJUwNg',
                      androidGoogleMapsApiKey:
                          'AIzaSyB2v-1CKYKI5Jdwq2HNk7tnTYt_iyzGHx4',
                      webGoogleMapsApiKey:
                          'AIzaSyDLtpQGSQ36MHLuGujSuUfNdIoO7McxH6k',
                      onSelect: (place) async {
                        setState(() => receiverLocationValue = place);
                      },
                      defaultText: 'Tap Here To Set Receiver Location',
                      icon: Icon(
                        Icons.place,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 16,
                      ),
                      buttonOptions: FFButtonOptions(
                        height: 60,
                        color: FlutterFlowTheme.of(context).darkBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Form(
                      key: formKey1,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                            child: TextFormField(
                              controller: receiverFullAddressController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                hintText: 'Receiver Full Address',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .grayLight,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).darkBackground,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.multiline,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return 'Field is required';
                                }

                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                            child: TextFormField(
                              controller: receiverNameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                hintText: 'Receiver Name',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .grayLight,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).darkBackground,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.name,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return 'Field is required';
                                }

                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                            child: TextFormField(
                              controller: receiverPhoneNumberController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                hintText: 'Receiver Phone Number',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .grayLight,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).darkBackground,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.phone,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return 'Field is required';
                                }

                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: Text(
                      'Item Category',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).grayLight,
                            fontSize: 16,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                    child: Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).grayDark,
                      ),
                      child: CheckboxListTile(
                        value: foodCategoryValue ??= false,
                        onChanged: (newValue) =>
                            setState(() => foodCategoryValue = newValue!),
                        title: Text(
                          'Food',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).grayLight,
                                fontSize: 16,
                              ),
                        ),
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        checkColor: FlutterFlowTheme.of(context).grayDark,
                        dense: true,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                    child: Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).grayDark,
                      ),
                      child: CheckboxListTile(
                        value: clothingCategoryValue ??= false,
                        onChanged: (newValue) =>
                            setState(() => clothingCategoryValue = newValue!),
                        title: Text(
                          'Clothing',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).grayLight,
                                fontSize: 16,
                              ),
                        ),
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        checkColor: FlutterFlowTheme.of(context).grayDark,
                        dense: true,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                    child: Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).grayDark,
                      ),
                      child: CheckboxListTile(
                        value: shoesCategoryValue ??= false,
                        onChanged: (newValue) =>
                            setState(() => shoesCategoryValue = newValue!),
                        title: Text(
                          'Shoes',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).grayLight,
                                fontSize: 16,
                              ),
                        ),
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        checkColor: FlutterFlowTheme.of(context).grayDark,
                        dense: true,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                    child: Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).grayDark,
                      ),
                      child: CheckboxListTile(
                        value: electronicsCategoryValue ??= false,
                        onChanged: (newValue) => setState(
                            () => electronicsCategoryValue = newValue!),
                        title: Text(
                          'Electronics',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).grayLight,
                                fontSize: 16,
                              ),
                        ),
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        checkColor: FlutterFlowTheme.of(context).grayDark,
                        dense: true,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                    child: Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).grayDark,
                      ),
                      child: CheckboxListTile(
                        value: jewaccessCategoryValue ??= false,
                        onChanged: (newValue) =>
                            setState(() => jewaccessCategoryValue = newValue!),
                        title: Text(
                          'Jewlery/Accessories',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).grayLight,
                                fontSize: 16,
                              ),
                        ),
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        checkColor: FlutterFlowTheme.of(context).grayDark,
                        dense: true,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                    child: Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).grayDark,
                      ),
                      child: CheckboxListTile(
                        value: docsCategoryValue ??= false,
                        onChanged: (newValue) =>
                            setState(() => docsCategoryValue = newValue!),
                        title: Text(
                          'Documents',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).grayLight,
                                fontSize: 16,
                              ),
                        ),
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        checkColor: FlutterFlowTheme.of(context).grayDark,
                        dense: true,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                    child: Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).grayDark,
                      ),
                      child: CheckboxListTile(
                        value: otherCategoryValue ??= false,
                        onChanged: (newValue) =>
                            setState(() => otherCategoryValue = newValue!),
                        title: Text(
                          'Other',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).grayLight,
                                fontSize: 16,
                              ),
                        ),
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        checkColor: FlutterFlowTheme.of(context).grayDark,
                        dense: true,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'BOOK_DELIVERY_Container_se1yqcb3_ON_TAP');
                        logFirebaseEvent('Container_Backend-Call');

                        final usersUpdateData = createUsersRecordData(
                          mileageCost: functions.calculateDistance(
                              senderLocationValue.latLng,
                              receiverLocationValue.latLng),
                        );
                        await currentUserReference!.update(usersUpdateData);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).background,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6,
                              color: Color(0x4B1A1F24),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'BOOK_DELIVERY_Column_a81jeig9_ON_TAP');
                            logFirebaseEvent('Column_Backend-Call');

                            final usersUpdateData = createUsersRecordData(
                              mileageCost: functions.calculateDistance(
                                  senderLocationValue.latLng,
                                  receiverLocationValue.latLng),
                            );
                            await bookDeliveryUsersRecord.reference
                                .update(usersUpdateData);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 12, 20, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Tap Here To See Mileage Cost',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .textColor,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 4, 20, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 20),
                                      child: Text(
                                        bookDeliveryUsersRecord.mileageCost!
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .title1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              fontSize: 32,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 20),
                                      child: Text(
                                        'km',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              fontSize: 18,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'BOOK_DELIVERY_PlaceBookingButton_ON_TAP');
                        var _shouldSetState = false;
                        if (valueOrDefault(
                                currentUserDocument?.mileageBalance, 0.0) >=
                            bookDeliveryUsersRecord.mileageCost!) {
                          logFirebaseEvent('PlaceBookingButton_Validate-Form');
                          if (formKey2.currentState == null ||
                              !formKey2.currentState!.validate()) {
                            return;
                          }

                          logFirebaseEvent('PlaceBookingButton_Validate-Form');
                          if (formKey1.currentState == null ||
                              !formKey1.currentState!.validate()) {
                            return;
                          }

                          if (bookDeliveryUsersRecord.mileageCost == 0.0) {
                            logFirebaseEvent('PlaceBookingButton_Alert-Dialog');
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text(
                                      'Tap Mileage Cost Before Proceeding'),
                                  content: Text(
                                      'Tap / Click on the \"Mileage Cost\" field to get the distance before proceeding.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Okay'),
                                    ),
                                  ],
                                );
                              },
                            );
                            if (_shouldSetState) setState(() {});
                            return;
                          } else {
                            logFirebaseEvent('PlaceBookingButton_Backend-Call');

                            final usersUpdateData = {
                              'mileage_balance': FieldValue.increment(
                                  functions.mileageBalance(0.0, 0.0,
                                      bookDeliveryUsersRecord.mileageCost)),
                            };
                            await currentUserReference!.update(usersUpdateData);
                          }

                          logFirebaseEvent('PlaceBookingButton_Backend-Call');

                          final bookOrderCreateData = createBookOrderRecordData(
                            senderName: senderNameController!.text,
                            senderPhone:
                                int.parse(senderPhoneNumberController!.text),
                            senderAddress: senderFullAddressController!.text,
                            senderLocation: senderLocationValue.latLng,
                            receiverName: receiverNameController!.text,
                            receiverPhone:
                                int.parse(receiverPhoneNumberController!.text),
                            receiverAddress:
                                receiverFullAddressController!.text,
                            receiverLocation: receiverLocationValue.latLng,
                            foodCategory: foodCategoryValue,
                            clothingCategory: clothingCategoryValue,
                            shoesCategory: shoesCategoryValue,
                            electronicsCategory: electronicsCategoryValue,
                            jewaccessCategory: jewaccessCategoryValue,
                            documentsCategory: docsCategoryValue,
                            otherCategory: otherCategoryValue,
                            orderTimestamp: getCurrentTimestamp,
                            senderEmail: '',
                            senderLandmark: '',
                            receiverEmail: '',
                            receiverLandmark: '',
                            orderId: '',
                            orderMileageCost:
                                bookDeliveryUsersRecord.mileageCost,
                            bookerId: currentUserUid,
                            orderStatus: 'Pending',
                          );
                          var bookOrderRecordReference =
                              BookOrderRecord.collection.doc();
                          await bookOrderRecordReference
                              .set(bookOrderCreateData);
                          bookOrderRef = BookOrderRecord.getDocumentFromData(
                              bookOrderCreateData, bookOrderRecordReference);
                          _shouldSetState = true;
                          logFirebaseEvent('PlaceBookingButton_Navigate-To');
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.bottomToTop,
                              duration: Duration(milliseconds: 250),
                              reverseDuration: Duration(milliseconds: 250),
                              child: BookingCompleteWidget(),
                            ),
                          );
                        } else {
                          logFirebaseEvent('PlaceBookingButton_Alert-Dialog');
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Insufficient Mileage'),
                                content: Text(
                                    'Sorry you do not have enough mileage to place booking. Top up or subscribe to a plan to place your order. Thanks'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Okay'),
                                  ),
                                ],
                              );
                            },
                          );
                          if (_shouldSetState) setState(() {});
                          return;
                        }

                        if (_shouldSetState) setState(() {});
                      },
                      text: 'Place Booking',
                      icon: Icon(
                        Icons.send_sharp,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 300,
                        height: 80,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Lexend Deca',
                              color:
                                  FlutterFlowTheme.of(context).darkBackground,
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
