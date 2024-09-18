import 'package:flutter/material.dart';
import 'package:QRScanner/screens/generate_code_page.dart';
import 'package:QRScanner/screens/scan_code_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Code Scanner',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      routes: {
        "/generate" : (context) => const GenerateCodePage(),
        "/scan" : (context) => const ScanCodePage(),
      },
      initialRoute: "/scan",
    );
  }
}
