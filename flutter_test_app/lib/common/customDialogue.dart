import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test_app/view/forgot.dart';

class CustomDialogue extends StatefulWidget {
  String title;
  String mst;

  CustomDialogue(String s, String msg) {
    print(s);
    this.title = s;
    this.mst = msg;
  }

  @override
  _CustomDialogueState createState() => _CustomDialogueState(title, mst);
}

class _CustomDialogueState extends State<CustomDialogue> {
  String title = "";
  String msg = "";

  _CustomDialogueState(String title, String msg) {
    print(title);
    this.title = title;
    this.msg = msg;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        //  child:  showAlertDialog(context),
        );
  }
}

AnimationController animationController;



showProgressDialog(BuildContext context) {
  // set up the buttons
  var dialogue = Dialog(
      elevation: 0.0,
      backgroundColor: Colors.white,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
        height: 150,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: new Container(
                height: 150.0,
                width: 150.0,
                child: new Image.asset(
                  'assets/images/tyre_final.png',
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            Image.asset(
              'assets/images/tyre_final.png',
              width: 80,
              height: 80,
            ),
            SizedBox(height: 2),
            Text(
              "Loading...",
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ));

  showDialog(context: context, builder: (BuildContext context) => dialogue);
}



String getReturnModel(jsonDecode){



  return "";
}
