import 'package:flutter/material.dart';
import 'package:e_commerce/constants/asset_image.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: kToolbarHeight + 12),
          const Text("Welcome", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
          const Text("Buy all your items here", style: TextStyle(fontSize: 18.0),),
          Image.asset(AssetImages.instance.welcomeImage)
        ],
      ),
    );
  }
}
