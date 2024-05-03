import 'package:flutter/material.dart';
import 'package:kengooroo_ui/kengooroo_ui.dart';

class KuiChip extends StatelessWidget {
  const KuiChip({
    super.key,
    required this.child,
    this.contentPadding,
    this.onPressed,
    this.isSelected = false,
  });

  final Widget child;
  final EdgeInsets? contentPadding;
  final VoidCallback? onPressed;
  final bool isSelected;

  void _onChipTappedAction() {
    onPressed?.call();
  }

  @override
  Widget build(BuildContext context) {
    final padding = contentPadding ??
        EdgeInsets.symmetric(
          vertical: isSelected ? 9 : 16,
          horizontal: isSelected ? 18.5 : 25.5,
        );
    final borderRadius = BorderRadius.circular(24);
    final selectedLineRadius = BorderRadius.circular(19);
    final onTap = onPressed == null ? null : _onChipTappedAction;

    return Stack(
      children: [
        Container(
          padding: isSelected ? const EdgeInsets.all(5) : EdgeInsets.zero,
          decoration: BoxDecoration(
            color: KuiColors.brown80,
            borderRadius: borderRadius,
          ),
          child: Container(
            padding: padding,
            decoration: BoxDecoration(
              border: isSelected
                  ? Border.all(
                      color: KuiColors.yellow50,
                      width: 2,
                    )
                  : null,
              borderRadius: selectedLineRadius,
            ),
            child: Center(child: child),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: borderRadius,
              onTap: onTap,
            ),
          ),
        )
      ],
    );
  }
}
