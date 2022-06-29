import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search_Page extends StatefulWidget {
  const Search_Page({Key? key}) : super(key: key);

  @override
  _Search_PageState createState() => _Search_PageState();
}

class _Search_PageState extends State<Search_Page> {
  List l1 = [
    "assets/images/bag.png",
    "assets/images/bag1.png",
    "assets/images/belt.png",
    "assets/images/ear.png",
  ];
  List l2 = ["Bag", "Bag", "Belt", "Earings"];
  List l3 = ["200 Rs", "120 Rs", "140 Rs", "135 Rs"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(

          backgroundColor: CupertinoColors.white,
          leading: Icon(
            CupertinoIcons.search,
            color: CupertinoColors.systemGrey,
          ),
          middle: Text(
            "bag",
            style: TextStyle(color: CupertinoColors.systemGrey),
          ),
          trailing: Icon(
            CupertinoIcons.clear_circled_solid,
            color: CupertinoColors.systemGrey,
          ),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: CupertinoColors.white,
          child: ListView.builder(
            itemCount: l1.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 3,
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset(l1[index]),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "${l2[index]}",
                          style: TextStyle(
                              color: CupertinoColors.black, fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("${l3[index]}")
                      ],
                    ),
                    Spacer(),
                    Icon(
                      CupertinoIcons.add_circled,
                      size: 30,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
