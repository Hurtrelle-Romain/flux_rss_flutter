import 'package:flutter/material.dart';

class DescriptionText extends Text {

  final String description;
  DescriptionText({required this.description}) :super(
    description,
    style: TextStyle(
    color: Colors.black87,),
  );

}