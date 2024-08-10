import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final Color buttonColor;
  final Color fontColor;
  final String buttonText;

  const CustomFilledButton(
      {super.key,
      required this.fontColor,
      required this.buttonColor,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        child: FilledButton(
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(buttonColor)),
            onPressed: () {},
            child: Text(
              buttonText,
              style: TextStyle(color: fontColor),
            )),
      ),
    );
  }
}
