import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextStyleFourth({
    super.key,
    required this.text,
    this.align = TextAlign.end,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
    );
  }
}
