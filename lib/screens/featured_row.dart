import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RowView extends StatefulWidget {
  const RowView({
    super.key,
    required this.image,
  });
  final String image;

  @override
  State<RowView> createState() => _RowViewState();
}

class _RowViewState extends State<RowView> {
  static bool liked = false;
  void setToggle(){
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: Stack(
        children: [
          GestureDetector(
            onDoubleTap: setToggle,
            child: Container(
              height: 250,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(widget.image)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(10, 10),
                        blurRadius: 10)
                  ]),
            ),
          ),
          Positioned(
            right: 10,
            top: 5,
            child: SizedBox(
              height: 50,
              width: 50,
              child: Icon(
                CupertinoIcons.heart_fill,
                color: liked? nPrimaryColor: Colors.white,
                size: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}
