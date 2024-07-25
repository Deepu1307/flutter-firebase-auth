import 'package:firebase_authentication/configs/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnName;
  final IconData icon;
  final VoidCallback ontap;

  const MyButton({super.key, required this.btnName, required this.icon, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: lightButtonColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: lightWhiteColor,),
            const SizedBox(width: 10,),
            Text(btnName, style: TextStyle(fontSize: 18, color: lightWhiteColor),)
          ]
        )
      ),
    );
  }
}
