import 'dart:io';

import 'package:android_mac_address/android_mac_address.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  String message = "Your Device is not Android";
  if (!kIsWeb && Platform.isAndroid) {
    String macAddress = await GetAndroidMac.macAddress;
    message = "Your mac address is :$macAddress";
  }

  runApp(MainApp(
    message: message,
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({required this.message, super.key});
  final String message;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(message),
        ),
      ),
    );
  }
}
