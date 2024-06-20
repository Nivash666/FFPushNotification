// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:onesignal_flutter/onesignal_flutter.dart';

Future onesignal(String externalid, int vendor, int subcategoryid) async {
  // Add your function code here!
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("e786d073-6b2b-40c7-9916-1d9586986d3a");
  OneSignal.Notifications.requestPermission(true);
  OneSignal.login(externalid);
  var sendTags = {'Vendor': vendor, 'eachcategory': subcategoryid};
  OneSignal.User.addTags(sendTags);
}
