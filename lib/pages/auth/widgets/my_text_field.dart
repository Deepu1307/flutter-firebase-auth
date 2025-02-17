import 'package:firebase_authentication/configs/colors.dart';
import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  final String lable;
  final IconData icons;
  final TextEditingController Onchange;
  const MyTextField({super.key, required this.lable, required this.icons, required this.Onchange});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: Onchange,
            decoration: InputDecoration(
              prefixIcon: Icon(icons),
              fillColor: lightWhiteColor,
              filled: true,
              hintText: lable,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        )
      ],
    );
  }
}
