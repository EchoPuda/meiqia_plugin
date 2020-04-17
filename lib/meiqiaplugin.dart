import 'dart:async';

import 'package:flutter/services.dart';

class Meiqiaplugin {
  static const MethodChannel _channel =
      const MethodChannel('meiqiaplugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
