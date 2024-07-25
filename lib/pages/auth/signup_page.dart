import 'package:firebase_authentication/controller/signup_controller.dart';
import 'package:firebase_authentication/pages/auth/widgets/my_button.dart';
import 'package:firebase_authentication/pages/auth/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController signupController = Get.put(SignupController());
    // TextEditingController name = TextEditingController();
    // TextEditingController number = TextEditingController();
    // TextEditingController email = TextEditingController();
    // TextEditingController password = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("S I G N U P"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      "SIGNUP",
                      style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                MyTextField(
                  lable: "Enter Name",
                  icons: Icons.person,
                  Onchange: signupController.name,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  icons: Icons.email,
                  lable: "Email id",
                  Onchange: signupController.email,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  icons: Icons.phone,
                  lable: "Phone Number",
                  Onchange: signupController.number,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  icons: Icons.password,
                  lable: "Password",
                  Onchange: signupController.password,
                ),
                const SizedBox(height: 20,),
                MyButton(btnName: "SIGNUP", icon: Icons.person_add, ontap: () {
                  signupController.onSignUp();
                },),
                const SizedBox(height: 15,),
                MyButton(btnName: "LOGIN", icon: Icons.admin_panel_settings_rounded, ontap: () {
                  Get.toNamed("/login");
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
