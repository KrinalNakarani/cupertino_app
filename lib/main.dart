import 'package:cupertino_app/Screen/Home_Page.dart';
import 'package:cupertino_app/Screen/Search_page.dart';
import 'package:cupertino_app/Screen/cart_Page.dart';
import 'package:cupertino_app/Screen/tab_page.dart';
import 'package:flutter/cupertino.dart';
void main(){
  runApp(
    CupertinoApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'tab',
      routes: {
        '/':(context)=>Home_Page(),
        'search':(context)=>Search_Page(),
        'cart':(context)=>CartPage(),
        'tab':(context)=>Tab_Page()

      },
    ),
  );
}