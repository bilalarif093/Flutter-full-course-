import 'package:flutter/material.dart';
import 'package:labflutter/model/catalog.dart';
import 'package:labflutter/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Full Course",
          // style: TextStyle(color: Colors.black),
        ),
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: CatelogList.products.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: CatelogList.products[index],
              );
            },
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
