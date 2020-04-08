import 'package:mobx/mobx.dart';
import 'package:tuluagov/app/modules/news/news_status.dart';
import 'package:tuluagov/app/modules/news/repositories/news_repository_interface.dart';
import 'package:url_launcher/url_launcher.dart';

import 'calling_status.dart';

part 'image_news_controller.g.dart';

class ImageNewsController = _ImageNewsControllerBase with _$ImageNewsController;

abstract class _ImageNewsControllerBase with Store {
  final INewsRepository repository;
  final String urlPost;

  _ImageNewsControllerBase(this.repository, {this.urlPost}) {
    //if(urlPost != null || urlPost.isNotEmpty)
    //getFeaturedImage(urlPost);
  }

  @observable
  CallingStatus callStatus = CallingStatus.none;

  @observable
  String imgUrl;


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

}
