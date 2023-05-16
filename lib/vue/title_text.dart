import 'package:flutter/material.dart';
import '../modele/articles.dart';

class TitleText extends StatelessWidget {
  final String title;
  TitleText({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}