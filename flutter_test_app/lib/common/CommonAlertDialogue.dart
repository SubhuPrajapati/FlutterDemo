import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/common/CommonColor.dart';
import 'package:get/get.dart';

class CommonAlert {
  static showAlertDialog(BuildContext context, String title, String errorMsg) {
    // set up the buttons
    var dialogue = Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
          height: 170,
          child: Column(
            children: [
              SizedBox(height: 16),
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                errorMsg,
                style: TextStyle(fontSize: 15),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: SizedBox(
                  height: 45,
                  width: 200,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: CommonColor.color[100],
                    child: Text(
                      "Ok",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Get.back();
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));

    Get.dialog(dialogue);

    //  showDialog(context: context, builder: (BuildContext context) => dialogue);
  }
}
