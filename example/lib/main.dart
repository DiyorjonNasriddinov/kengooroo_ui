import 'package:example/screens/components_scrren.dart';
import 'package:flutter/material.dart';
import 'package:kengooroo_ui/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: kengoorooBaseTheme,
      home: const ComponentsScreen(),
    );
  }
}
