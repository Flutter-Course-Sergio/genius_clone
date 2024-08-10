import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomOutlinedSvgButton extends StatelessWidget {
  final Color fontColor;
  final String buttonText;
  final String svgPath;

  const CustomOutlinedSvgButton(
      {super.key,
      required this.fontColor,
      required this.svgPath,
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
              SvgPicture.asset(
                svgPath,
                height: 20,
              ),
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
