import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:flutter/material.dart';

class DefaultAppBody extends StatelessWidget {
  final Widget child;

  const DefaultAppBody({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: whiteSmoke,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: child,
    );
  }
}
