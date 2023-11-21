import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopTitles extends StatelessWidget {
  final String title, subtitle;

  const TopTitles({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title == "Login" || title == "Create Account")
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios, color: Colors.red,)),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
