import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tuluagov/app/modules/news/image_news_controller.dart';
import 'package:tuluagov/app/modules/news/news_status.dart';
import 'package:tuluagov/app/modules/news/models/news.dart';
import 'news_controller.dart';
import 'package:tuluagov/app/modules/news/components/featuredImage_widget.dart';

class NewsPage extends StatefulWidget {
  final String title;
  const NewsPage({Key key, this.title = "News"}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends ModularState<NewsPage, NewsController> {
  //use 'controller' variable to access controller

  FeaturedImageWidget _image;
  @override
  void initState() {
    controller.fetchPost();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(builder: (_) {
        if (controller.status == NewsStatus.loading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (controller.status == NewsStatus.success) {
          final list = controller.status.value as List<NewsModel>;
          if (list.isNotEmpty) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  var thumb =
                      "https://www.tulua.gov.co/wp-content/uploads/2020/01/logo_login.jpeg";
                  if (list[index].embedded != null)
                    thumb = list[index]
                        .embedded
                        .wpFeaturedmedia[0]
                        .mediaDetails
                        .sizes
                        .medium
                        .sourceUrl;
                  return Card(
                    child: Column(
                      children: <Widget>[
                        CachedNetworkImage(
                          imageUrl: thumb,
                          placeholder: (context, url) =>
                              Image.asset('loader48x48.gif'),
                          errorWidget: (context, url, error) =>
                              Image.asset('logo.jpg'),
                        ),
                        ExpansionTile(
                          title: Text(list[index].title.rendered),
                          leading: GestureDetector(
                              child: Icon(Icons.launch),
                              onTap: () {
                                controller.launchURL(list[index].link);
                              }),
                          children: <Widget>[                           
                            Html(data: list[index].content.rendered)
                          ],
                        ),
                      ],
                    ),
                  );
                });
          } else {
            return Center(child: Text('No hay datos'));
          }
        } else if (controller.status == NewsStatus.error) {
          return Center(child: Text("${controller.status.value}"));
        } else {
          return Container();
        }
      }),
    );
  }
}
