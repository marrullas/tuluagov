import 'package:dio/dio.dart';
import 'package:tuluagov/app/modules/news/image_news_controller.dart';
import 'package:tuluagov/app/modules/news/news_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tuluagov/app/modules/news/news_page.dart';
import 'package:tuluagov/app/modules/news/repositories/tuluagovNews_repository.dart';


class NewsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TuluagovNewsRepository(i.get<Dio>())),
        Bind((i) => NewsController(i.get<TuluagovNewsRepository>())),
        Bind((i) => ImageNewsController(i.get<TuluagovNewsRepository>()),singleton: false)
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => NewsPage()),
      ];

  static Inject get to => Inject<NewsModule>.of();
}
