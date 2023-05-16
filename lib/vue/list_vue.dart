import 'package:flutter/material.dart';
import 'package:flux_rss/vue/tile_view.dart';
import '../modele/articles.dart';

class ListVue extends StatelessWidget {
  final List<Article> articles;
  ListVue({required this.articles});

   @override
  Widget build(BuildContext context) {
     return ListView.separated(
         itemBuilder: ((context, index) => TileView(article: articles[index])),
         separatorBuilder: ((context, index) => Divider()),
         itemCount: articles.length
     );

  }
}