import 'package:bkash/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bKash Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        useMaterial3: false,
      ),
      builder: (context, child) => Banner(
        message: 'DEMO • SIMULATION ONLY',
        location: BannerLocation.topEnd,
        color: Colors.deepOrange,
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 9,
          letterSpacing: 0.4,
        ),
        child: child ?? const SizedBox.shrink(),
      ),
      home: const MyHomePage(title: 'bKash Demo'),
    );
  }
}
