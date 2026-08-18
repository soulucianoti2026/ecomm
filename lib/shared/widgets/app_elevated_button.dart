import 'package:flutter/material.dart';
import 'package:more_devs_do_zero/shared/app_colors.dart';
import 'package:more_devs_do_zero/shared/app_text_style.dart';

enum ButtonType { filled, outlined }

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.label,
    required this.type,
    this.onPressed,
    this.backgroundColor,
    this.isLoading = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final ButtonType type;
  final Color? backgroundColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: _getStyle(),
      child: isLoading
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: AppColors.black,
              ),
            )
          : Text(label),
    );
  }

  ButtonStyle _getStyle() {
    switch (type) {
      case ButtonType.filled:
        return ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
          foregroundColor: AppColors.white,
          backgroundColor: backgroundColor ?? AppColors.black,
          textStyle: AppTextStyle.buttonLabel,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        );
      case ButtonType.outlined:
        return ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
          foregroundColor: AppColors.black,
          backgroundColor: backgroundColor ?? AppColors.white,
          textStyle: AppTextStyle.buttonLabel,

          shape: RoundedRectangleBorder(
            side: BorderSide(color: AppColors.black),
            borderRadius: BorderRadius.circular(12),
          ),
        );
    }
  }
}
