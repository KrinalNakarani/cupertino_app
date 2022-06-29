import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  DateTime? chosenDateTime;

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
                  Text(
                    "Delivery Time",
                    style: TextStyle(
                        color: CupertinoColors.systemGrey, fontSize: 25),
                  ),
                ],
              ),
              ElevatedButton(onPressed: (){
                showDatePicker();
              }, child: Text("Chose"),),
            ],
          ),
        ),
      ),
    );
  }
  void showDatePicker()
  {  showCupertinoModalPopup(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).copyWith().size.height*0.25,
          color: Colors.white,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.dateAndTime,
            onDateTimeChanged: (value) {
              if (value != null || value != chosenDateTime)
                setState(() {
                  chosenDateTime = value;
                });
            },
            initialDateTime: DateTime.now(),
            minimumYear: 2022,
            maximumYear: 2030,
          ),
        );
      }
  );
  }
}
