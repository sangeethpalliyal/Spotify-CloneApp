import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone_app/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone_app/common/widgets/custom_text.dart';
import 'package:spotify_clone_app/core/configs/assets/app_images.dart';
import 'package:spotify_clone_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone_app/core/configs/theme/app_colors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 40),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1667280771121-4c8d9d0378e1?q=80&w=1793&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(AppVectors.logo),
              ),
              const Spacer(),
              CustomText(
                text: "Enjoy listening to music",
                fontSize: 20,
                fontweight: FontWeight.bold,
                fontColor: Colors.white,
              ),
              const SizedBox(height: 21,),
              CustomText(
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.",
                fontSize: 13,
                fontweight: FontWeight.w400,
                fontColor: AppColors.grey,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20,),
              BasicAppButton(onPressed: (){}, title: 'Get Started')
            ],
          ),
        )
      ],
    ));
  }
}
