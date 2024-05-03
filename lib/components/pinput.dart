import 'package:flutter/material.dart';
import 'package:kengooroo_ui/kengooroo_ui.dart';
import 'package:pinput/pinput.dart';

class KuiPinput extends StatelessWidget {
  const KuiPinput({
    super.key,
    this.validator,
    this.length = 4,
    this.defaultPinTheme,
    this.focusedPinTheme,
    this.submittedPinTheme,
    this.onCompleted,
  });

  final FormFieldValidator<String>? validator;
  final int length;
  final PinTheme? defaultPinTheme;
  final PinTheme? focusedPinTheme;
  final PinTheme? submittedPinTheme;
  final ValueChanged<String>? onCompleted;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = this.defaultPinTheme ??
        PinTheme(
          width: 64,
          height: 80,
          textStyle: KuiTextStyles.h2,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: KuiColors.brown90,
            borderRadius: BorderRadius.circular(1234),
          ),
        );

    final focusedPinTheme = this.focusedPinTheme ??
        defaultPinTheme.copyDecorationWith(
          border: Border.all(color: KuiColors.yellow60),
        );

    final submittedPinTheme = this.submittedPinTheme ?? defaultPinTheme;

    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      length: length,
      validator: validator,
      showCursor: true,
      onCompleted: onCompleted,
    );
  }
}
