import 'package:flutter/material.dart';
import 'package:wallpaper/model/wallpaper_model.dart';

// ignore: non_constant_identifier_names
Widget BrandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Text(
        'Wallpaper',
        style: TextStyle(color: Colors.black),
      ),
      Text(
        'Hub',
        style: TextStyle(color: Colors.white),
      )
    ],
  );
}

Widget wallpapersList({required List<WallpaperModel> wallpapers, context}) {
  return Container(
    child: GridView.count(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 16),
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: wallpapers.map((wallpaper) {
        return GridTile(
          child: Container(
            child: Image.network(wallpaper.src.portrait),
          ),
        );
      }).toList(),
    ),
  );
}
