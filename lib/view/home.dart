import 'package:flutter/material.dart';
import 'package:wallpaper/data/data.dart';
import 'package:wallpaper/model/categories_model.dart';
import 'package:wallpaper/widget/widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoriesModel> categories = [];
  void initState() {
    categories = getCategories();
    super.initState();
  }

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
            Container(
              child: Row(
                children: const [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Search Wallpaper'),
                    ),
                  ),
                  Icon(Icons.search)
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                return CategoriesTile(
                    imgUrl: categories[index].imageUrl,
                    title: categories[index].categoriesName);
              },
              itemCount: categories.length,
              shrinkWrap: true,
            )
          ],
        ),
      ),
    );
  }
}

class CategoriesTile extends StatelessWidget {
  final String imgUrl, title;
  CategoriesTile({required this.imgUrl, required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: Image.network(imgUrl),
          ),
          Container(
            child: Text(title),
          )
        ],
      ),
    );
  }
}
