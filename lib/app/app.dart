import 'package:flutter/material.dart';

class KengoorooApp extends StatefulWidget {
  const KengoorooApp({super.key});

  @override
  State<KengoorooApp> createState() => _KengoorooAppState();
}

class _KengoorooAppState extends State<KengoorooApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router();
  }
}
