import 'package:e_commerce/constants/routes/routes.dart';
import 'package:e_commerce/screens/auth_ui/sign_up/signup.dart';
import 'package:e_commerce/widgets/elevated_button.dart';
import 'package:e_commerce/widgets/textfield.dart';
import 'package:e_commerce/widgets/top_title.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
 final TextEditingController emailController = TextEditingController();

 final TextEditingController passwordController = TextEditingController();
 bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopTitles(
                  title: "Login", subtitle: "Welcome back to E commerce App"),
              const SizedBox(height: 8),
               TextFields(
                 obsecure: false,
                controller: emailController,
                hintText: "Email",
                iconData: Icons.email,
                label: "Email",
              ),
              const SizedBox(height: 16),
               TextFields(
                 obsecure: isShowPassword,
                 controller: passwordController,
                hintText: "Password",
                iconData: Icons.lock,
                suffixIconData: !isShowPassword ? Icons.visibility : Icons.visibility_off,
                label: "Password",
                 onTap: (){
                   setState(() {
                     isShowPassword = !isShowPassword;
                   });
                 },
              ),
              const SizedBox(
                height: 14,
              ),
              PrimaryButton(title: "LOGIN", onPressed: () {}),
              const SizedBox(
                height: 6,
              ),
              const Center(
                  child: Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 16),
              )),
              Center(
                  child: TextButton(
                onPressed: () {
                  Routes.instance.push(widget:  SignUp(), context: context);
                },
                child: Text(
                  "Create Account",
                  style: TextStyle(fontSize: 14,color: Theme.of(context).primaryColor),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
