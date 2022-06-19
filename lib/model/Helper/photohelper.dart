import 'dart:convert';

import 'package:cat_app/model/Services/photoapi.dart';
import 'package:cat_app/model/core/photo.dart';
import 'package:dartz/dartz.dart';

class CatPhotoHelper {
  final api = PhotoApi();
  getRandomCatPhoto() async {
    final apiResult = await api.getRandomCatPhoto();
    var photo = Photo.fromMap(jsonDecode(apiResult)[0]);
  }
}
