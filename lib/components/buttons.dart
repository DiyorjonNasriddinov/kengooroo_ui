import 'package:flutter/material.dart';
import 'package:kengooroo_ui/kengooroo_ui.dart';

class KuiElevatedButton extends StatelessWidget {
  const KuiElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.backgroudColor = KuiColors.yellow60,
    this.foregroundColor = KuiColors.brown90,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 17, horizontal: 100),
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
        padding: MaterialStateProperty.all(contentPadding),
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

class KuiTextButton extends StatelessWidget {
  const KuiTextButton({
    super.key,
    this.onPressed,
    required this.child,
    this.color = KuiColors.yellow60,
    this.textStyle,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final Color color;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final textStyle =
        KuiTextStyles.text18Bold.copyWith(color: color).merge(this.textStyle);
    return TextButton(
      onPressed: onPressed,
      child: DefaultTextStyle(
        style: textStyle,
        child: child,
      ),
    );
  }
}
