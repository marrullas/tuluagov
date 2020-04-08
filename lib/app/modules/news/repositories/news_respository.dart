import 'package:dio/dio.dart';
import 'package:tuluagov/app/shared/models/post.dart';

import 'news_repository_interface.dart';

class NewsRepository implements INewsRepository {
  final Dio _client;

  NewsRepository(this._client);

  @override
  Future getPost() async{
    final response = await _client.get('https://jsonplaceholder.typicode.com/posts');
    return (response.data as List).map((e)=>PostModel.fromJson(e)).toList();
  }

  @override
  Future<String> getFeaturedImage(String url) {
    // TODO: implement getFeaturedImage
    return null;
  }





}