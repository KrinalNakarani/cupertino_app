import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var initialDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            "Shoping Cart",
            style: TextStyle(color: CupertinoColors.black, fontSize: 25),
          ),
          backgroundColor: CupertinoColors.white,
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: CupertinoColors.white,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.person_solid,
                    color: CupertinoColors.systemGrey,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Name",
                    style: TextStyle(
                        color: CupertinoColors.systemGrey, fontSize: 25),
                  ),
                ],
              ),
              Divider(
                color: CupertinoColors.systemGrey,
                thickness: 1,
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.mail_solid,
                    color: CupertinoColors.systemGrey,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "E-mail",
                    style: TextStyle(
                        color: CupertinoColors.systemGrey, fontSize: 25),
                  ),
                ],
              ),
              Divider(
                color: CupertinoColors.systemGrey,
                thickness: 1,
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.location_solid,
                    color: CupertinoColors.systemGrey,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Location",
                    style: TextStyle(
                        color: CupertinoColors.systemGrey, fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/bag.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "Bag",
                        style: TextStyle(
                            color: CupertinoColors.black, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "200 Rs",
                        style: TextStyle(color: CupertinoColors.inactiveGray),
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    "200 Rs",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/bag1.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "Bag",
                        style: TextStyle(
                            color: CupertinoColors.black, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "300 Rs",
                        style: TextStyle(color: CupertinoColors.inactiveGray),
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    "300 Rs",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/belt.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "Belt",
                        style: TextStyle(
                            color: CupertinoColors.black, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "240 Rs",
                        style: TextStyle(color: CupertinoColors.inactiveGray),
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    "240 Rs",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Divider(
                color: CupertinoColors.systemGrey,
                thickness: 1,
                height: 30,
              ),
              Row(
                children: [
                  Spacer(),
                  Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 25,
                        color: CupertinoColors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "740 Rs",
                    style: TextStyle(
                        fontSize: 25,
                        color: CupertinoColors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Divider(
                color: CupertinoColors.systemGrey,
                thickness: 1,
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.time,
                    color: CupertinoColors.systemGrey,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        showDatePicker();
                      },
                      child: Text("Delivery Time",style: TextStyle(color: CupertinoColors.inactiveGray,fontSize: 25),),
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showDatePicker() async {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).copyWith().size.height * 0.25,
            color: Colors.white,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.dateAndTime,
              onDateTimeChanged: (value) {
                if (value != null || value != initialDate)
                  setState(() {
                    initialDate = value;
                  });
              },
              initialDateTime: DateTime.now(),
              minimumYear: 2022,
              maximumYear: 2030,
              backgroundColor: CupertinoColors.inactiveGray,
            ),
          );
        });
  }
}
