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
