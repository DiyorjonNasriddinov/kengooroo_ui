import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kengooroo_ui/kengooroo_ui.dart';

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
            RichText(
              text:
                  TextSpan(text: 'Tilni ', style: KuiTextStyles.h2, children: [
                TextSpan(
                  text: 'tanlang',
                  style: KuiTextStyles.h2.copyWith(color: KuiColors.yellow60),
                )
              ]),
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                  text: 'Выберите ',
                  style: KuiTextStyles.h2,
                  children: [
                    TextSpan(
                      text: 'язык',
                      style:
                          KuiTextStyles.h2.copyWith(color: KuiColors.yellow60),
                    )
                  ]),
            ),
            const SizedBox(height: 30),
            KuiChip(
              isSelected: isSelected,
              onPressed: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: const Text("English"),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 56,
              child: KuiElevatedButton(
                onPressed: () {},
                child: const Text('hello'),
              ),
            ),
            const SizedBox(height: 10),
            const KuiTextField(
              label: 'Label',
              hintText: 'Input',
              supportingText: 'Supporting text',
            ),
            const SizedBox(height: 10),
            KuiTextButton(
              onPressed: () {},
              child: const Text("Hello"),
            ),
            const SizedBox(height: 10),
            KuiPinput()
          ],
        ),
      ),
    );
  }
}
