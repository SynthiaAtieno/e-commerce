import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/constants/asset_image.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: kToolbarHeight + 12),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Buy all your items here",
              style: TextStyle(fontSize: 18.0),
            ),
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
                    onPressed: () {},
                    child: Image.asset(
                      AssetImages.instance.googleImage,
                      scale: 95,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
