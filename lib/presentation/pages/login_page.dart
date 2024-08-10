import 'package:flutter/material.dart';

import '../../config/theme/app_theme.dart';
import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: size.height,
          color: color2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text('Email o nombre de usuario', style: textStyles.titleSmall),
                const CustomTextFormField(
                    keyboardType: TextInputType.emailAddress),
                const SizedBox(
                  height: 50,
                ),
                Text('Contraseña', style: textStyles.titleSmall),
                const CustomTextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 50,
                ),
                const CustomFilledButton(
                  fontColor: color2,
                  buttonColor: color5,
                  buttonText: 'Iniciar sesión',
                ),
                const CustomOutlinedIconButton(
                  fontColor: color5,
                  icon: Icons.login,
                  buttonText: 'Iniciar sesión sin contraseña',
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
