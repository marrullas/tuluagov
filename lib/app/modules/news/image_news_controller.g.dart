// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_news_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ImageNewsController on _ImageNewsControllerBase, Store {
  final _$callStatusAtom = Atom(name: '_ImageNewsControllerBase.callStatus');

  @override
  CallingStatus get callStatus {
    _$callStatusAtom.context.enforceReadPolicy(_$callStatusAtom);
    _$callStatusAtom.reportObserved();
    return super.callStatus;
  }

  @override
  set callStatus(CallingStatus value) {
    _$callStatusAtom.context.conditionallyRunInAction(() {
      super.callStatus = value;
      _$callStatusAtom.reportChanged();
    }, _$callStatusAtom, name: '${_$callStatusAtom.name}_set');
  }

  final _$imgUrlAtom = Atom(name: '_ImageNewsControllerBase.imgUrl');

  @override
  String get imgUrl {
    _$imgUrlAtom.context.enforceReadPolicy(_$imgUrlAtom);
    _$imgUrlAtom.reportObserved();
    return super.imgUrl;
  }

  @override
  set imgUrl(String value) {
    _$imgUrlAtom.context.conditionallyRunInAction(() {
      super.imgUrl = value;
      _$imgUrlAtom.reportChanged();
    }, _$imgUrlAtom, name: '${_$imgUrlAtom.name}_set');
  }

  final _$getFeaturedImageAsyncAction = AsyncAction('getFeaturedImage');

  @override
  Future<dynamic> getFeaturedImage(String url) {
    return _$getFeaturedImageAsyncAction.run(() => super.getFeaturedImage(url));
  }

  @override
  String toString() {
    final string =
        'callStatus: ${callStatus.toString()},imgUrl: ${imgUrl.toString()}';
    return '{$string}';
  }
}
