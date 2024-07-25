import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kengooroo_ui/kengooroo_ui.dart';

class KuiTextField extends StatelessWidget {
  const KuiTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.textColor = Colors.white,
    this.borderColor = KuiColors.yellow50,
    this.backgroundColor = KuiColors.brown80,
    this.maxLength,
    this.maxLines = 1,
    this.minLines,
    this.contentPadding = const EdgeInsets.all(16),
    this.hintText,
    this.hintTextStyle = KuiTextStyles.text16Bold,
    this.labelTextStyle = KuiTextStyles.text16Bold,
    this.supportingText,
    this.supportingTextStyle = KuiTextStyles.text16Semibold,
    TextInputType? keyboardType,
    this.inputFormatters,
    this.style,
  }) : keyboardType = keyboardType ??
            (maxLines == 1 ? TextInputType.text : TextInputType.multiline);

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? label;
  final TextStyle labelTextStyle;
  final String? supportingText;
  final TextStyle? style;
  final TextStyle supportingTextStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color textColor;
  final Color borderColor;
  final Color backgroundColor;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final EdgeInsetsGeometry? contentPadding;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Column(
            children: [
              Text(label!, style: labelTextStyle),
              const SizedBox(height: 8),
            ],
          ),
        Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: TextField(
            style: style,
            controller: controller,
            onChanged: onChanged,
            maxLength: maxLength,
            maxLines: maxLines,
            minLines: minLines,
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: hintTextStyle,
              contentPadding: contentPadding,
              iconColor: textColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(color: backgroundColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(color: backgroundColor),
              ),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(color: borderColor),
              ),
              focusColor: borderColor,
            ),
          ),
        ),
        if (supportingText != null)
          Column(
            children: [
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(supportingText!, style: supportingTextStyle),
              ),
            ],
          ),
      ],
    );
  }
}
