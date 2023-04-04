import 'package:flutter/material.dart';
import 'package:selfradio/data/locator.dart';
import 'package:selfradio/ui/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(const SelfradioApp());
}

class SelfradioApp extends StatelessWidget {
  const SelfradioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selfradio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(title: 'Demo Home Page'),
    );
  }
}