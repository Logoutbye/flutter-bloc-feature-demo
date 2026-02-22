
import 'package:bloc_clean_coding/shared/themes/theme_config.dart';
import 'package:bloc_clean_coding/core/utils/general_ectensions.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;
  Widget? icon;
  // Optional parameters with default values
  final double? height; // Nullable to calculate dynamically if not provided
  final double? width;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final double borderRadius;
  final TextStyle? textStyle;
  final Color loadingIndicatorColor;

  RoundButton({
    super.key,
    required this.title,
    this.loading = false,
    required this.onPress,
    this.height,
    this.icon,
    this.width,
    this.textColor = ThemeConfig.whiteColor,
    this.color = ThemeConfig.primaryColor,
    this.borderColor = Colors.transparent,
    this.borderRadius = 10.0,
    this.textStyle,
    this.loadingIndicatorColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null : onPress,
      child: Container(
        height: height ?? context.mediaQueryHeight / 18,
        width: width ?? context.mediaQueryWidth / 1.2,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor),
        ),
        child: Center(
          child: loading
              ? CircularProgressIndicator(color: loadingIndicatorColor)
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: icon != null
                      ? MainAxisAlignment.spaceAround
                      : MainAxisAlignment.center,
                  children: [
                    if (icon != null) ...[icon ?? SizedBox()],
                    Text(
                      title,
                      style: textStyle ??
                          TextStyle(
                            color: textColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    if (icon != null) ...[SizedBox()],
                  ],
                ),
        ),
      ),
    );
  }
}
