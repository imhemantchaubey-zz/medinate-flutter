import 'package:flutter/material.dart';
import 'package:medinate/pages/RegPages/Blood_drive_registration.dart';
import 'package:medinate/pages/RegPages/Donor_Registration.dart';
import 'package:medinate/pages/home_page.dart';
import 'package:medinate/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: TabBarDemo(),
    );
  }
}
