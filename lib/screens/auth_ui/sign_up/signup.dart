import 'package:e_commerce/constants/routes/routes.dart';
import 'package:e_commerce/constants/theme.dart';
import 'package:e_commerce/screens/auth_ui/login/login.dart';
import 'package:e_commerce/screens/home/home_page.dart';
import 'package:e_commerce/widgets/elevated_button.dart';
import 'package:e_commerce/widgets/textfield.dart';
import 'package:e_commerce/widgets/top_title.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final nameController = TextEditingController();

  final phoneController = TextEditingController();
  bool isShowPassword = true;

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
                suffixIconData: !isShowPassword ? Icons.visibility : Icons.visibility_off,
                onTap: (){
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
              ),
              const SizedBox(height: 18),
              PrimaryButton(onPressed: () {
                Routes.instance.pushAndRemoveUtil(widget: const HomePage(), context: context);
                /*print("jhkjrhghger");
                if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty && nameController.text.isNotEmpty && phoneController.text.isNotEmpty){
                  print("ghireghiurehgiug");
                  FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim());
                  print("hfjshkhjklashdjkds");

                }else{
                    print("Please fill all the fields");
                }*/
              }, title: "SignUp"),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Routes.instance.pushAndRemoveUtil(widget: const Login(), context: context);},
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
