import 'package:flutter/material.dart';
import 'package:kengooroo_ui/kengooroo_ui.dart';
import 'package:kengooroo_ui/theme/text_style.dart';

class KuiElevatedButton extends StatelessWidget {
  const KuiElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.backgroudColor = KuiColors.yellow60,
    this.foregroundColor = KuiColors.brown90,
    this.contentPadding = const EdgeInsets.all(18),
    this.textStyle,
  });

  final Widget child;
  final Color backgroudColor;
  final Color foregroundColor;
  final EdgeInsets contentPadding;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final textStyle = this.textStyle ??
        KuiTextStyles.text18Bold.copyWith(color: foregroundColor);

    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroudColor),
        foregroundColor: MaterialStateProperty.all(foregroundColor),
      ),
      onPressed: onPressed,
      child: DefaultTextStyle(
        style: textStyle,
        child: child,
      ),
    );
  }
}
