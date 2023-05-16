import 'package:flutter/material.dart';
import 'package:flux_rss/modele/date_parser.dart';

class DateRow extends StatelessWidget {
  final DateTime date;
  @override

  const DateRow({Key? key, required this.date}): super(key:key);

  Widget build(BuildContext context) {
   return Row(
       children: [
         Spacer(),
         Text(
           DateParser().readableDate(date),
           style: TextStyle(
             color: Colors.blueAccent,
             fontStyle: FontStyle.italic,
             fontSize: 11,
           ),
         ),
       ],
     );
  }
}