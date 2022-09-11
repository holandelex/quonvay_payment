import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsSettingsWidget extends StatefulWidget {
  const NotificationsSettingsWidget({Key? key}) : super(key: key);

  @override
  _NotificationsSettingsWidgetState createState() =>
      _NotificationsSettingsWidgetState();
}

class _NotificationsSettingsWidgetState
    extends State<NotificationsSettingsWidget> {
  bool? emailSwitchListTileValue;
  bool? pushSwitchListTileValue;
  bool? locationSwitchListTileValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'notificationsSettings'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).background,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            logFirebaseEvent('NOTIFICATIONS_SETTINGS_Icon_3cvyzw70_ON_');
            logFirebaseEvent('Icon_Navigate-Back');
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).grayLight,
            size: 32,
          ),
        ),
        title: Text(
          'Notifications',
          style: FlutterFlowTheme.of(context).title3,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).background,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).background,
        ),
        child: StreamBuilder<UsersRecord>(
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
            final columnUsersRecord = snapshot.data!;
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'Choose what notifcations you want to recieve below and we will update the settings.',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: AuthUserStreamWidget(
                    child: SwitchListTile.adaptive(
                      value: pushSwitchListTileValue ??= valueOrDefault<bool>(
                          currentUserDocument?.pushNotification, false),
                      onChanged: (newValue) =>
                          setState(() => pushSwitchListTileValue = newValue),
                      title: Text(
                        'Push Notifications',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      subtitle: Text(
                        'Stay up to date on your orders. Receive Push notifications from our application on a semi regular basis.',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      activeColor: FlutterFlowTheme.of(context).tertiaryColor,
                      activeTrackColor:
                          FlutterFlowTheme.of(context).primaryColor,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
                    ),
                  ),
                ),
                AuthUserStreamWidget(
                  child: SwitchListTile.adaptive(
                    value: emailSwitchListTileValue ??= valueOrDefault<bool>(
                        currentUserDocument?.emailNotification, false),
                    onChanged: (newValue) =>
                        setState(() => emailSwitchListTileValue = newValue),
                    title: Text(
                      'Email Notifications',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    subtitle: Text(
                      'Receive email notifications from our marketing team about new features and discounts.',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    activeColor: FlutterFlowTheme.of(context).tertiaryColor,
                    activeTrackColor: FlutterFlowTheme.of(context).primaryColor,
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
                  ),
                ),
                AuthUserStreamWidget(
                  child: SwitchListTile.adaptive(
                    value: locationSwitchListTileValue ??= valueOrDefault<bool>(
                        currentUserDocument?.locationServices, false),
                    onChanged: (newValue) =>
                        setState(() => locationSwitchListTileValue = newValue),
                    title: Text(
                      'Location Services',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    subtitle: Text(
                      'Allow us to track your location, this helps keep track of your orders and helps us understand you better.',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    activeColor: FlutterFlowTheme.of(context).tertiaryColor,
                    activeTrackColor: FlutterFlowTheme.of(context).primaryColor,
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'NOTIFICATIONS_SETTINGS_Button-Login_ON_T');
                      logFirebaseEvent('Button-Login_Backend-Call');

                      final usersUpdateData = createUsersRecordData(
                        pushNotification: pushSwitchListTileValue,
                        emailNotification: emailSwitchListTileValue,
                        locationServices: locationSwitchListTileValue,
                      );
                      await currentUserReference!.update(usersUpdateData);
                      logFirebaseEvent('Button-Login_Navigate-Back');
                      Navigator.pop(context);
                    },
                    text: 'Save Changes',
                    options: FFButtonOptions(
                      width: 190,
                      height: 50,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).background,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
