import 'package:flutter/material.dart';
import 'package:ui_6/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _controller;

  final List<Tab> topTabs = <Tab>[
    const Tab(text: 'Products'),
    const Tab(text: 'Catogories'),
  ];

  @override
  void initState() {
    super.initState();

    _controller = TabController(
      vsync: this,
      length: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Container(
          padding: EdgeInsets.only(left: 15),
          child: const Center(
            child: Text(
              'Catalogue',
              style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.search,
            ),
          )
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: topTabs,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          ListView(
            children: [
              products(
                "assets/images/p1.jpg",
                "Watch | Mens ",
                "₹9999",
              ),
              products(
                "assets/images/p2.jpg",
                "Dennis Lingo | Mens",
                "₹699",
              ),
              products(
                "assets/images/p3.jpg",
                "Hmalaya Face wash | Beauty",
                "₹299",
              ),
              products(
                "assets/images/p1.jpg",
                "Watch | Mens ",
                "₹9999",
              ),
              products(
                "assets/images/p2.jpg",
                "Dennis Lingo | Mens",
                "₹699",
              ),
            ],
          ),
          Container(),
        ],
      ),
    );
  }
}
