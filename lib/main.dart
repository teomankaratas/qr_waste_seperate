import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/scanner/qr_scanner_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      )),
      debugShowCheckedModeBanner: false,
      title: 'QR WASTE SEPERATOR',
      home: const QRscannerScreen(),
    );
  }
}
