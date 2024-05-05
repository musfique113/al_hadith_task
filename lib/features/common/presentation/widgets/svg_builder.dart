import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgBuilder extends StatelessWidget {
  const SvgBuilder({
    super.key,
    required this.path,
    this.height,
    this.width,
    this.color,
    this.fit = BoxFit.contain,
  });

  final String path;
  final double? height, width;
  final Color? color;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      color: color,
      fit: fit,
    );
  }
}
