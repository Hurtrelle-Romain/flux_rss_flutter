import 'package:flutter/material.dart';
import 'package:flux_rss/vue/date_row.dart';
import 'package:flux_rss/vue/image_view.dart';
import 'package:flux_rss/vue/list_vue.dart';
import 'package:flux_rss/vue/tile_view.dart';
import '../modele/articles.dart';
import '../modele/feed_parser.dart';

class FeedController  extends StatelessWidget {
  final String url;
  const FeedController({required this.url});


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
    future: FeedParser().getFeed(url),
    builder:(context, snapshot) => ListVue(articles: snapshot.data ?? [])
    );
  }
}