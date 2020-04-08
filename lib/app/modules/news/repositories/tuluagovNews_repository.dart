import 'package:dio/dio.dart';
import 'package:tuluagov/app/modules/news/models/featured_media.dart';
import 'package:tuluagov/app/modules/news/models/news.dart';

import 'news_repository_interface.dart';

class TuluagovNewsRepository implements INewsRepository {
  final Dio _client;

  TuluagovNewsRepository(this._client);

  @override
  Future getPost({int page =1}) async{
    final response = await _client.get('https://www.tulua.gov.co/wp-json/wp/v2/noticias?page='+page.toString()+'&_embed');
    return (response.data as List).map((e)=>NewsModel.fromJson(e)).toList();
    //return (response.data as List).toList();
  }

  @override
  Future<String> getFeaturedImage(String url) async{
    final response = await _client.get(url);
    final FeaturedMedia newsModel = FeaturedMedia.fromJson(response.data);
    print(newsModel.guid.rendered.toString());
    return newsModel.guid.rendered.toString();
  }




}