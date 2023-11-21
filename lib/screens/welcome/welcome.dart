import 'package:e_commerce/constants/routes/routes.dart';
import 'package:e_commerce/widgets/elevated_button.dart';
import 'package:e_commerce/widgets/top_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/constants/asset_image.dart';

import '../auth_ui/login/login.dart';
import '../auth_ui/sign_up/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopTitles(title: "Welcome", subtitle: "Buy any item from our application"),
              Image.asset(
                AssetImages.instance.welcomeImage,
                alignment: Alignment.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      child: const Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      )),
                  const SizedBox(width: 10),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                    },
                    child: Image.asset(
                      AssetImages.instance.googleImage,
                      scale: 95,
                    ),
                  ),
                ],
              ),
              PrimaryButton(title: "Login", onPressed: (){ Routes.instance.push(widget:  Login(), context: context);}),
              const SizedBox(height: 10),
              PrimaryButton(title: "SignUp", onPressed: (){ Routes.instance.push(widget:  SignUp(), context: context);}),
            ],
          ),
        ),
      ),
    );
  }
}
