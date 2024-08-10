import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/theme/app_theme.dart';
import '../pages.dart';
import '../widgets/widgets.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 0.1, 0.2, 0.4],
              colors: [color5, color4, color2, color3])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Spacer(),
          SvgPicture.asset(
            'assets/icons/spotify-icon.svg',
            color: Colors.white,
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            height: size.height * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Millones de canciones.\nGratis en Spotify.',
                  style: textStyles.titleSmall,
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                const CustomFilledButton(
                  fontColor: color3,
                  buttonColor: color1,
                  buttonText: 'Registrate gratis',
                ),
                const CustomOutlinedIconButton(
                    fontColor: color5,
                    icon: Icons.smartphone_rounded,
                    buttonText: "Continuar con número de teléfono"),
                const CustomOutlinedSvgButton(
                    fontColor: color5,
                    svgPath: 'assets/icons/google-icon.svg',
                    buttonText: "Continuar con Google"),
                const CustomOutlinedSvgButton(
                    fontColor: color5,
                    svgPath: 'assets/icons/facebook-icon.svg',
                    buttonText: "Continuar con Facebook"),
                CustomTextButton(
                  fontColor: color5,
                  buttonText: 'Iniciar sesión',
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => const LoginPage()));
                  },
                ),
                const Spacer(),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
