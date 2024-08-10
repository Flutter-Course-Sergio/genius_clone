import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final Color fontColor;

  const CustomFilledButton({super.key, required this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        child: FilledButton(
            onPressed: () {},
            child: Text(
              'Registrate gratis',
              style: TextStyle(color: fontColor),
            )),
      ),
    );
  }
}
