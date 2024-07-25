
import 'package:firebase_authentication/controller/login_controller.dart';
import 'package:firebase_authentication/pages/auth/widgets/my_button.dart';
import 'package:firebase_authentication/pages/auth/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(
        title: Text("L O G I N "),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "Welcome back",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(height: 30),
              MyTextField(
                icons: Icons.email,
                lable: "Email id",
                Onchange: loginController.email,
              ),
              SizedBox(height: 10),
              MyTextField(
                icons: Icons.password,
                lable: "Password",
                Onchange: loginController.password,
              ),
              SizedBox(height: 20),
              MyButton(
                btnName: "LOGIN",
                icon: Icons.admin_panel_settings_rounded,
                ontap: () {
                  loginController.onLogin();
                },
              ),
              SizedBox(height: 20),
              MyButton(
                btnName: "SIGN UP",
                icon: Icons.person_add,
                ontap: () {
                  Get.toNamed("/signup");
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
