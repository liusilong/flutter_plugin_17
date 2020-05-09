import 'dart:async';

import 'package:flutter/services.dart';

class Flutterplugin17 {
  static const MethodChannel _channel =
      const MethodChannel('flutterplugin17');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void> callMethod() async{
    await _channel.invokeMethod("personName");
  }
}
