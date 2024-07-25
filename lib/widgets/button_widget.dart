// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double heigth;
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color backgroundColor;
  final Color fontColor;

  const ButtonWidget({
    Key? key,
    this.heigth = 48,
    this.title = 'ГОООООЛ',
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    this.backgroundColor = const Color.fromRGBO(236, 74, 10, 1),
    this.fontColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: heigth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            color: fontColor,
            fontWeight: fontWeight,
            letterSpacing: -0.7,
          ),
        ),
      ),
    );
  }
}
