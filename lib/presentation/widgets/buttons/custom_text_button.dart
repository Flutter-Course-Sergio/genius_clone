import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Color fontColor;
  final String buttonText;

  const CustomTextButton(
      {super.key, required this.fontColor, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
          onPressed: () {},
          child: Text(
            buttonText,
            style: TextStyle(color: fontColor),
          ),
        ),
      ),
    );
  }
}
