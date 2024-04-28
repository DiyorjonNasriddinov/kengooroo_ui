import 'package:flutter/material.dart';
import 'package:kengooroo_ui/components/buttons.dart';
import 'package:kengooroo_ui/components/chip.dart';

class ComponentsScreen extends StatefulWidget {
  const ComponentsScreen({super.key});

  @override
  State<ComponentsScreen> createState() => _ComponentsScreenState();
}

class _ComponentsScreenState extends State<ComponentsScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KuiChip(
              isSelected: isSelected,
              onPressed: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: const Text("English"),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 56,
              child: KuiElevatedButton(
                onPressed: () {},
                child: const Text('hello'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
