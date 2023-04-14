import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.37,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.27,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: greenGradient(),
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(35),
                    bottomLeft: Radius.circular(35))),
          ),
          Positioned(
            bottom: 140,
            right: 110,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  gradient: blueGradient(),
                  borderRadius: BorderRadius.circular(150)),
            ),
          ),
          Positioned(
            top: 20,
            child: SizedBox(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    CupertinoIcons.square_grid_2x2_fill,
                    size: 40,
                    color: Colors.white,
                  ),
                  Column(
                    children: const [
                      Text(
                        "Hello, Nabin Purbey",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            letterSpacing: 1),
                      ),
                      Text("Kathmandu, Nepal",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: glassColor,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 80,
              left: 45,
              child: Container(
                height: 50,
                width: size.width * 0.80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(36)),
                child: TextField(
                    cursorColor: nSecondaryColor,
                    cursorWidth: 2,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: nPrimaryColor.withOpacity(0.3),
                            fontSize: 21,
                            letterSpacing: 2),
                        prefixIcon: const Icon(Icons.search,
                            color: nPrimaryColor, size: 30))),
              )),
          Positioned(
            top: 160,
            child: SizedBox(
              height: 120,
              width: MediaQuery.of(context).size.width,
              // color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: glassColor,
                        border: Border.all(color: Colors.white.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Icon(Icons.location_on, color: Colors.white,size: 70,),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: glassColor,
                        border: Border.all(color: Colors.white.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Icon(Icons.message, color: Colors.white,size: 70,),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: glassColor,
                        border: Border.all(color: Colors.white.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Icon(Icons.calendar_month, color: Colors.white,size: 70,),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}