import 'package:flutter/material.dart';
import 'package:wallpaper/widget/widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BrandName(),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
            color: const Color(0xfff5f8fd),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Search Wallpaper'),
                  ),
                ),
                Icon(Icons.search)
              ],
            )
          ],
        ),
      ),
    );
  }
}
