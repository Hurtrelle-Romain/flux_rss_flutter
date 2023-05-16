import 'package:flutter/material.dart';
import 'package:flux_rss/controller/feed_controller.dart';
import 'package:flux_rss/controller/home_controller.dart';
import 'package:flux_rss/modele/feed_parser.dart';
import 'package:http/http.dart' as http;
import 'package:webfeed/domain/rss_feed.dart';
import 'package:intl/intl.dart';


import 'modele/articles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeController()
    );
  }
}
