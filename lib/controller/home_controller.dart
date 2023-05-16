import 'package:flutter/material.dart';
import 'package:flux_rss/controller/feed_controller.dart';
import '../modele/rss_type.dart';

class HomeController extends StatelessWidget{

  List<RssType> types = [
    RssType(type: "Infos", url:"https://www.francebleu.fr/rss/infos.xml"),
    RssType(type: "Sports", url:"https://www.francebleu.fr/rss/alsace/rubrique/sports.xml"),
    RssType(type: "Vie quotidienne", url:"https://www.francebleu.fr/rss/vie-quotidienne.xml")
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: types.length,
        child: Scaffold(
        appBar: AppBar(title: Text("mon flux rss"),
        bottom: TabBar(tabs: types.map((type) => Tab(text: type.type,)).toList(),),
        ),
        body: TabBarView(children: types.map((type) => FeedController(url: type.url)).toList(),),
        )
    );

  }
}