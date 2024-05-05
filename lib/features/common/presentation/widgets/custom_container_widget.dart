import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  final Widget child;
  final Color? color;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;

  const CustomContainerWidget({
    super.key,
    required this.child,
    this.color,
    this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? white,
        borderRadius: borderRadius ?? BorderRadius.circular(10),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(10.0),
        child: child,
      ),
    );
  }
}
