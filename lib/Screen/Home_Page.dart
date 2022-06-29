import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List img = [
      "assets/images/bag.png",
      "assets/images/bag1.png",
      "assets/images/belt.png",
      "assets/images/ear.png",
      "assets/images/sun.png",
      "assets/images/t1.png",
      "assets/images/ring.png"

    ];
    List n1 = ["Bag", "Bag", "Belt", "Earings", "Sunglasses", "T-shirt","Rings"];
    List pr = ["200 Rs","120 Rs","140 Rs","135 Rs","105 Rs","508 Rs"," 700 Rs"];
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Cupertino Store",style: TextStyle(color: CupertinoColors.black,fontSize: 25),
          ),
          backgroundColor: CupertinoColors.white,
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: CupertinoColors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: img.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  color: CupertinoColors.white,
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset(img[index]),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "${n1[index]}",
                            style: TextStyle(color: CupertinoColors.black,fontSize: 20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("${pr[index]}")
                        ],
                      ),
                      Spacer(),
                      Icon(CupertinoIcons.add_circled,size: 30,),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
