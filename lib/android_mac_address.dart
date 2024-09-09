library android_mac_address;

import 'dart:async';

import 'package:flutter/services.dart';

class GetAndroidMac {
  static const MethodChannel _channel = MethodChannel('get_android_mac');
  static Future<String> get macAddress async {
    return await _channel.invokeMethod('getMacAddress');
  }
}
