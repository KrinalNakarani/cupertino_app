import 'package:cupertino_app/Screen/Home_Page.dart';
import 'package:cupertino_app/Screen/Search_page.dart';
import 'package:cupertino_app/Screen/cart_Page.dart';
import 'package:flutter/cupertino.dart';

class Tab_Page extends StatefulWidget {
  const Tab_Page({Key? key}) : super(key: key);

  @override
  _Tab_PageState createState() => _Tab_PageState();
}

class _Tab_PageState extends State<Tab_Page> {
  List l1 = [Home_Page(), Search_Page(), CartPage()];
  dynamic index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: l1[index]),
            CupertinoTabBar(
              backgroundColor: CupertinoColors.white,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.cart),
                  label: "Cart",
                ),
              ],
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },
              currentIndex: index,
            ),
          ],
        ),
      ),
    );
  }
}
