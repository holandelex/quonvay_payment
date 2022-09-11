import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_credit_card_form.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../payment_test_page/payment_test_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscribeMileageWidget extends StatefulWidget {
  const SubscribeMileageWidget({Key? key}) : super(key: key);

  @override
  _SubscribeMileageWidgetState createState() => _SubscribeMileageWidgetState();
}

class _SubscribeMileageWidgetState extends State<SubscribeMileageWidget> {
  final creditCardFormKey = GlobalKey<FormState>();
  CreditCardModel creditCardInfo = emptyCreditCard();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'subscribeMileage'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        singleRecord: true,
      ),
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
        List<UsersRecord> subscribeMileageUsersRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final subscribeMileageUsersRecord =
            subscribeMileageUsersRecordList.isNotEmpty
                ? subscribeMileageUsersRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).darkBackground,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).background,
                    boxShadow: [
                      BoxShadow(
                        color: FlutterFlowTheme.of(context).background,
                      )
                    ],
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 44, 20, 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subscribe To Send Stuff',
                              style: FlutterFlowTheme.of(context).title1,
                            ),
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context).background,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                buttonSize: 48,
                                icon: Icon(
                                  Icons.close_rounded,
                                  color: FlutterFlowTheme.of(context).textColor,
                                  size: 30,
                                ),
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'SUBSCRIBE_MILEAGE_close_rounded_ICN_ON_T');
                                  logFirebaseEvent('IconButton_Navigate-Back');
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                          child: FlutterFlowCreditCardForm(
                            formKey: creditCardFormKey,
                            creditCardModel: creditCardInfo,
                            obscureNumber: true,
                            obscureCvv: true,
                            spacing: 10,
                            textStyle: FlutterFlowTheme.of(context).title3,
                            inputDecoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).grayDark,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).grayDark,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                          child: Text(
                            'Select a delivery mileage plan to proceed.',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 100,
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.8,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).darkBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'SUBSCRIBE_MILEAGE_Column_30p8ta96_ON_TAP');
                                logFirebaseEvent('Column_Navigate-To');
                                await Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: PaymentTestPageWidget(),
                                  ),
                                );
                                logFirebaseEvent('Column_Backend-Call');

                                final usersUpdateData = {
                                  'mileage_balance': FieldValue.increment(10.0),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                                logFirebaseEvent('Column_Navigate-To');
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: NavBarPage(
                                        initialPage: 'mainDashboard'),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Lite',
                                        style:
                                            FlutterFlowTheme.of(context).title3,
                                      ),
                                      Text(
                                        'NGN 5000',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .grayLight,
                                            ),
                                      ),
                                      Icon(
                                        Icons.payment,
                                        color: FlutterFlowTheme.of(context)
                                            .grayDark,
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '10km max per month',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          fontSize: 16,
                                          fontStyle: FontStyle.italic,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 100,
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.8,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).darkBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'SUBSCRIBE_MILEAGE_Column_i5al28oj_ON_TAP');
                                logFirebaseEvent('Column_Backend-Call');

                                final usersUpdateData = {
                                  'mileage_balance': FieldValue.increment(20.0),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                                logFirebaseEvent('Column_Navigate-To');
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: NavBarPage(
                                        initialPage: 'mainDashboard'),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Amateur',
                                        style:
                                            FlutterFlowTheme.of(context).title3,
                                      ),
                                      Text(
                                        'NGN 10,000',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF2079CF),
                                            ),
                                      ),
                                      Icon(
                                        Icons.payment,
                                        color: FlutterFlowTheme.of(context)
                                            .grayDark,
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '20km max per month',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          fontSize: 16,
                                          fontStyle: FontStyle.italic,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 100,
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.8,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).darkBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'SUBSCRIBE_MILEAGE_Column_fvfhcvj1_ON_TAP');
                                logFirebaseEvent('Column_Backend-Call');

                                final usersUpdateData = {
                                  'mileage_balance': FieldValue.increment(42.0),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                                logFirebaseEvent('Column_Navigate-To');
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: NavBarPage(
                                        initialPage: 'mainDashboard'),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Pro',
                                        style:
                                            FlutterFlowTheme.of(context).title3,
                                      ),
                                      Text(
                                        'NGN 20,000',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF17E63C),
                                            ),
                                      ),
                                      Icon(
                                        Icons.payment,
                                        color: FlutterFlowTheme.of(context)
                                            .grayDark,
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '42km max per month',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          fontSize: 16,
                                          fontStyle: FontStyle.italic,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 100,
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.8,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).darkBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'SUBSCRIBE_MILEAGE_Column_ah8ij7d2_ON_TAP');
                                logFirebaseEvent('Column_Backend-Call');

                                final usersUpdateData = {
                                  'mileage_balance': FieldValue.increment(80.0),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                                logFirebaseEvent('Column_Navigate-To');
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: NavBarPage(
                                        initialPage: 'mainDashboard'),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Business',
                                        style:
                                            FlutterFlowTheme.of(context).title3,
                                      ),
                                      Text(
                                        'NGN 50,000',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                      ),
                                      Icon(
                                        Icons.payment,
                                        color: FlutterFlowTheme.of(context)
                                            .grayDark,
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '80km max per month',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          fontSize: 16,
                                          fontStyle: FontStyle.italic,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
