import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app_tracking_transparency/app_tracking_transparency.dart'
    as att;

class AppTrackingTransparency {
  final key = 'att_requested';

  Future<bool> check() async {
    if (!Platform.isIOS) return true;
    final pref = await SharedPreferences.getInstance();
    final att_requested = pref.getBool(key) ?? false;
    if (att_requested) return true;
    return false;
  }

  Future<void> request() async {
    await att.AppTrackingTransparency.requestTrackingAuthorization();
    final pref = await SharedPreferences.getInstance();
    await pref.setBool(key, true);
  }
}
