import 'dart:async';

import 'package:flutter/services.dart';

class AndroidLockTask {
  static const MethodChannel _channel =
      const MethodChannel('android_lock_task');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<dynamic> stop() async {
    final a = await _channel.invokeMethod('stop');
    return null;
  }
  
  static Future<dynamic> start() async {
    final a = await _channel.invokeMethod('start');
    return null;
  }

  static Future<dynamic> restart() async {
    final a = await _channel.invokeMethod('restart');
    return null;
  }
}
