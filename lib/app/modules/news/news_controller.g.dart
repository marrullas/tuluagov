// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewsController on _NewsControllerBase, Store {
  final _$statusAtom = Atom(name: '_NewsControllerBase.status');

  @override
  NewsStatus get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(NewsStatus value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$callStatusAtom = Atom(name: '_NewsControllerBase.callStatus');

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

  final _$imgUrlAtom = Atom(name: '_NewsControllerBase.imgUrl');

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

  final _$fetchPostAsyncAction = AsyncAction('fetchPost');

  @override
  Future<void> fetchPost() {
    return _$fetchPostAsyncAction.run(() => super.fetchPost());
  }

  final _$getFeaturedImageAsyncAction = AsyncAction('getFeaturedImage');

  @override
  Future<dynamic> getFeaturedImage(String url) {
    return _$getFeaturedImageAsyncAction.run(() => super.getFeaturedImage(url));
  }

  final _$launchURLAsyncAction = AsyncAction('launchURL');

  @override
  Future<void> launchURL(String url) {
    return _$launchURLAsyncAction.run(() => super.launchURL(url));
  }

  @override
  String toString() {
    final string =
        'status: ${status.toString()},callStatus: ${callStatus.toString()},imgUrl: ${imgUrl.toString()}';
    return '{$string}';
  }
}
