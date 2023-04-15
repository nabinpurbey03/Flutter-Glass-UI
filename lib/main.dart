import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glass_ui/constants.dart';
import 'package:glass_ui/screens/featured_row.dart';
import 'package:glass_ui/screens/header_screen.dart';
import 'package:glass_ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: myTheme(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> featuredRowContent = [
    "assets/images/avatar_1.png",
    "assets/images/avatar_2.png",
    "assets/images/avatar_3.png",
    "assets/images/avatar_4.png",
    "assets/images/avatar_5.png",
    "assets/images/product1.png",
    "assets/images/product2.png",
    "assets/images/product3.png",
    "assets/images/product4.png",
    "assets/images/product5.png",
    "assets/images/product6.png",
    "assets/images/product7.png",
    "assets/images/product8.png",
    "assets/images/product9.png",
    "assets/images/product10.png",
    "assets/images/product11.png",
    "assets/images/product12.png",
    "assets/images/product13.png"
  ];
  List<String> bestSellerRowContent = [
    "assets/images/product1.png",
    "assets/images/product2.png",
    "assets/images/product3.png",
    "assets/images/product4.png",
    "assets/images/product5.png",
    "assets/images/product6.png",
    "assets/images/product7.png",
    "assets/images/product8.png",
    "assets/images/product9.png",
    "assets/images/product10.png",
    "assets/images/product11.png",
    "assets/images/product12.png",
    "assets/images/product13.png",
    "assets/images/avatar_1.png",
    "assets/images/avatar_2.png",
    "assets/images/avatar_3.png",
    "assets/images/avatar_4.png",
    "assets/images/avatar_5.png",
  ];
  List<String> newArrivalRowContent = [
    "assets/images/product1.png",
    "assets/images/product2.png",
    "assets/images/avatar_2.png",
    "assets/images/product3.png",
    "assets/images/product4.png",
    "assets/images/product5.png",
    "assets/images/avatar_3.png",
    "assets/images/product6.png",
    "assets/images/product7.png",
    "assets/images/product8.png",
    "assets/images/avatar_4.png",
    "assets/images/product9.png",
    "assets/images/product10.png",
    "assets/images/avatar_5.png",
    "assets/images/product11.png",
    "assets/images/product12.png",
    "assets/images/product13.png",
    "assets/images/avatar_1.png",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavigationBar(
          currentIndex: 0,
          iconSize: 30,
          backgroundColor: glassColor,
          // type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueGrey.withOpacity(0.4),
          unselectedItemColor: Colors.blueGrey.withOpacity(0.4),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house_fill), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bag_fill), label: "Shop"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_text_fill), label: "SMS")
          ],
        ),
      ),
      body: ListView(
        children: [
          HeaderView(size: size),
          buildRow("Featured"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: Row(
              children: List.generate(featuredRowContent.length,
                  (index) => RowView(image: featuredRowContent[index])),
            ),
          ),
          buildRow("Best Seller"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: Row(
              children: List.generate(bestSellerRowContent.length,
                  (index) => RowView(image: bestSellerRowContent[index])),
            ),
          ),
          buildRow("New Arrivals"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: Row(
              children: List.generate(newArrivalRowContent.length,
                  (index) => RowView(image: newArrivalRowContent[index])),
            ),
          ),
        ],
      ),
    );
  }

  Row buildRow(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, letterSpacing: 2),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextButton(
              onPressed: () {},
              child: const Text(
                "View All",
                style: TextStyle(fontSize: 20),
              )),
        )
      ],
    );
  }
}
