import 'package:flutter/material.dart';
import 'package:spotify_clone_app/common/widgets/custom_text.dart';

class BasicAppButton extends StatelessWidget {
  const BasicAppButton(
      {super.key, required this.onPressed, required this.title,this.height});
  final VoidCallback onPressed;
  final String title;
  final double ? height;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 60),
      ),
      onPressed: onPressed,
      child: CustomText(text: title,fontColor: Colors.white,fontSize: 17,fontweight: FontWeight.bold,),
    );
  }
}
