import 'package:flutter/material.dart';
import 'package:login_clean_architecture/config/color/colors.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final double height;
  const RoundButton({Key? key, this.height = 40, required this.title, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}

