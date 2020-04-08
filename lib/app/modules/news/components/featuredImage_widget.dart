import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tuluagov/app/modules/news/image_news_controller.dart';
import 'package:tuluagov/app/modules/news/repositories/tuluagovNews_repository.dart';

import '../calling_status.dart';

class FeaturedImageWidget extends StatefulWidget {
  final String img;

  const FeaturedImageWidget({Key key, this.img}) : super(key: key);

  @override
  _FeaturedImageWidgetState createState() => _FeaturedImageWidgetState();
}

class _FeaturedImageWidgetState extends State<FeaturedImageWidget> {
  final ImageNewsController controller = ImageNewsController(TuluagovNewsRepository(Modular.get<Dio>()));
  

  @override
  void initState() {
    //if (controller.callStatus != CallingStatus.success || controller.callStatus != CallingStatus.error)
    controller.getFeaturedImage(widget.img);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        //if (controller.imgUrl == null || controller.imgUrl.isEmpty) {
        if (controller.callStatus == CallingStatus.loading) {
          return Center(
            child: Image.asset("assets/loader48x48.gif"),
          );
        } else if (controller.callStatus == CallingStatus.success) {
        //} else if (controller.imgUrl != null || controller.imgUrl.isNotEmpty) {
          return Column(
            children: <Widget>[
              //Image.network(controller.callStatus.value)
              //FadeInImage.assetNetwork(placeholder: "assets/loader48x48.gif", image: controller.callStatus.value)
              ExtendedImage.network(
                controller.imgUrl,
                //width: ScreenUtil.instance.setWidth(400),
                //height: ScreenUtil.instance.setWidth(400),
                fit: BoxFit.fill,
                cache: true,
                border: Border.all(color: Colors.red, width: 1.0),
                //shape: boxShape,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                //cancelToken: cancellationToken,
              )
            ],
          );
        } else if (controller.callStatus == CallingStatus.error) {
          return Column(
            children: <Widget>[
              Image.network(
                  "https://www.tulua.gov.co/wp-content/uploads/2020/01/logo_login.jpeg"),
            ],
          );
        }else{
          return Container(width: 0.0,height: 0.0,);
        }
       
      },
    );
  }
}
