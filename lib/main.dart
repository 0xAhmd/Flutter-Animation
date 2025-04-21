import 'package:animations/pages/home_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';

void main() {
  // Set the status bar color to transparent
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  runApp(DevicePreview(builder: (context) => const Ani()));
}

class Ani extends StatelessWidget {
  const Ani({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
