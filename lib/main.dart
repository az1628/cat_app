import 'package:flutter/material.dart';
import 'package:cat_app/view/catphototiles.dart';
import 'package:cat_app/provider/CatProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                CatPhotoTile.clear();
                catphotos.clear();
                provider.refreshGird();
              },
            )
          ],
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Cute kitten',
            style: GoogleFonts.pacifico(),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: catphotos.length == 0
                ? Center(
              child: CircularProgressIndicator(),
            )
                : StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                staggeredTileBuilder: (index) => catPhotoTiles[index],
                itemCount: catPhotos.length,
                itemBuilder: (context, index) {
                  return catPhotos[index];
                })));
  }
