import 'package:flutter/material.dart';

class CustomButon extends StatelessWidget {
  CustomButon(
      {this.onTap,
      required this.text,
      required this.textColor,
      required this.bgColor});
  VoidCallback? onTap;
  String text;
  Color textColor;
  Color bgColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 32),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
