import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';

class HexagonShape extends StatelessWidget {
  final String textInside;

  const HexagonShape({
    super.key,
    required this.textInside,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: HexagonWidget.flat(
        width: 50,
        color: viridian,
        cornerRadius: 8,
        padding: 0.0,
        child: Text(
          textInside,
          textAlign: TextAlign.center,
          style: TextStyles.medium14.copyWith(color: white,fontFamily: 'Poppins'),
        ),
      ),
    );
  }
}
