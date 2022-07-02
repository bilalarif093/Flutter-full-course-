import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:labflutter/model/catalog.dart';
import 'package:labflutter/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    await Future.delayed(Duration(seconds: 1));
    var catelogJson = await rootBundle.loadString("files/catelog.json");
    var decordedData = jsonDecode(catelogJson);
    var products = decordedData["products"];
    CatelogList.products =
        List.from(products).map<Item>((item) => Item.fromMap(item)).toList();
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(50, (index) => CatelogList.products[0]);
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
          child:
              (CatelogList.products != null && CatelogList.products.isNotEmpty)
                  ? ListView.builder(
                      itemCount: CatelogList.products.length,
                      itemBuilder: (context, index) {
                        return ItemWidget(
                          item: CatelogList.products[index],
                        );
                      },
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
