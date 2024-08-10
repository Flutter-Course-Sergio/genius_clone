import 'package:flutter/material.dart';

class CustomOutlinedIconButton extends StatelessWidget {
  final IconData icon;
  final Color fontColor;
  final String buttonText;

  const CustomOutlinedIconButton(
      {super.key,
      required this.fontColor,
      required this.icon,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon, color: fontColor),
              const Spacer(),
              Text(
                buttonText,
                style: TextStyle(color: fontColor),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
