import 'package:e_commerce/constants/routes/routes.dart';
import 'package:e_commerce/constants/theme.dart';
import 'package:e_commerce/screens/auth_ui/login/login.dart';
import 'package:e_commerce/widgets/elevated_button.dart';
import 'package:e_commerce/widgets/textfield.dart';
import 'package:e_commerce/widgets/top_title.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopTitles(
                  title: "Create Account",
                  subtitle: "Create an account to continue"),
              const SizedBox(height: 10),
              TextFields(
                  obsecure: false,
                  controller: nameController,
                  hintText: "Name",
                  iconData: Icons.person,
                  label: "Name"),
              const SizedBox(height: 10),
              TextFields(
                  obsecure: false,
                  controller: phoneController,
                  hintText: "Phone Number",
                  iconData: Icons.phone,
                  label: "Phone Number"),
              const SizedBox(height: 10),
              TextFields(
                  obsecure: false,
                  controller: emailController,
                  hintText: "Email",
                  iconData: Icons.email,
                  label: "Email"),
              const SizedBox(height: 10),
              TextFields(
                obsecure: true,
                controller: passwordController,
                hintText: "Password",
                iconData: Icons.lock,
                label: "Password",
                suffixIconData: Icons.visibility,
              ),
              const SizedBox(height: 18),
              PrimaryButton(onPressed: () {}, title: "SignUp"),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {Routes.instance.push(widget: Login(), context: context);},
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
