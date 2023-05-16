import 'package:flutter/material.dart';
import 'package:flux_rss/vue/description_text.dart';
import 'package:flux_rss/vue/image_view.dart';
import 'package:flux_rss/vue/my_padd.dart';
import 'package:flux_rss/vue/title_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../modele/articles.dart';

class DetailController extends StatelessWidget {
  final Article article;
  DetailController({super.key, required this.article});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padd(),
            TitleText(title: article.title),
            Padd(),
            ImageView(imageUrl: article.imageUrl),
            Padd(),
            Divider(),
            Padd(),
            DescriptionText(description: article.description),
            Padd(),
            ElevatedButton(
                onPressed: handleToWeb,
                child: Text("Vers l'article complet")),
          ],
        ),
      ),
    );
  }

  handleToWeb() async {
      if(await launchUrlString(article.link)) {
        await launchUrlString(article.link);
      }
  }

}