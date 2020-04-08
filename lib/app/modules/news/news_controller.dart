import 'package:mobx/mobx.dart';
import 'package:tuluagov/app/modules/news/news_status.dart';
import 'package:tuluagov/app/modules/news/repositories/news_repository_interface.dart';
import 'package:url_launcher/url_launcher.dart';

import 'calling_status.dart';

part 'news_controller.g.dart';

class NewsController = _NewsControllerBase with _$NewsController;

abstract class _NewsControllerBase with Store {
  final INewsRepository repository;

  _NewsControllerBase(this.repository) {
    //fetchPost();
  }

  @observable
  NewsStatus status = NewsStatus.none;

  @observable
  CallingStatus callStatus = CallingStatus.none;

  @observable
  String imgUrl;

  @action
  Future<void> fetchPost() async {
    status = NewsStatus.loading;
    try {
      final response = await repository.getPost();
      status = NewsStatus.success..value = response;
    } catch (e) {
      status = NewsStatus.error..value = e;
    }
  }

  @action
  Future getFeaturedImage(String url) async {
    callStatus = CallingStatus.loading;
    try {
      final response = await repository.getFeaturedImage(url);
      callStatus = CallingStatus.success..value = response;
      imgUrl = response;
    } catch (e) {
      callStatus = CallingStatus.error..value = e;
    }
  }

  @action
  Future<void> launchURL(String url) async {
    //const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
