import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone_app/common/appbar/app_bar.dart';
import 'package:spotify_clone_app/common/helpers/is_dark.dart';
import 'package:spotify_clone_app/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone_app/common/widgets/custom_text.dart';
import 'package:spotify_clone_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone_app/core/configs/theme/app_colors.dart';
import 'package:spotify_clone_app/presentation/auth/pages/signup.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 30,
          width: 30,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _regiterText(),
            const SizedBox(
              height: 30,
            ),
            _fullNameFiled(context),
            const SizedBox(
              height: 10,
            ),
            // _emailFiled(context),
            // const SizedBox(
            //   height: 10,
            // ),
            _passwordFiled(context),
            const SizedBox(
              height: 10,
            ),
            BasicAppButton(onPressed: () {}, title: 'Sign In'),
            const SizedBox(
              height: 10,
            ),
            _signinText(context),
          ],
        ),
      ),
    );
  }

  Widget _regiterText() {
    return CustomText(
      text: "Sign In",
      fontSize: 25,
      fontweight: FontWeight.bold,
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNameFiled(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(hintText: 'Username or Email ID')
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  // Widget _emailFiled(BuildContext context) {
  //   return TextField(
  //     decoration: const InputDecoration(hintText: 'Email ID')
  //         .applyDefaults(Theme.of(context).inputDecorationTheme),
  //   );
  // }

  Widget _passwordFiled(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(hintText: 'Password')
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _signinText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: 'Not a Member?',
          fontweight: FontWeight.w500,
          fontSize: 13,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => SignUpPage(),
              ),
            );
          },
          child: CustomText(
            text: 'Register now',
            fontColor: Colors.blue,
            fontweight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
