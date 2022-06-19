import 'dart:async';
import 'package:cat_app/model/Services/photoapi.dart';
import 'package:cat_app/model/core/photo.dart';
import 'package:cat_app/model/Helper/photohelper.dart';
import 'package:flutter/cupertino.dart';

class CatProvider extends ChangeNotifier {
  final _helper = CatPhotoHelper();
  final _streamController = StreamController<Photo>();

  Stream<Photo> get catPhotoStream {
    return _streamController.stream;
  }

  Future<void> getTwentyRandomPhoto() async {
    for (int i = 0; i < 20; i++) {
      final catHelperResult = await _helper.getRandomCatPhoto();
      _streamController.add(catHelperResult);
    }
  }
}
