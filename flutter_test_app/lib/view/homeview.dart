import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/common/CommonColor.dart';
import 'package:flutter_test_app/common/CommonSharedPreferenece.dart';
import 'package:flutter_test_app/controller/HomeController.dart';
import 'package:flutter_test_app/controller/login_controller.dart';
import 'package:get/get.dart';

class MyHomeView extends StatefulWidget {
  @override
  _MyHomeViewState createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Dashboard',
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(10),
                child: Obx(() {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /*2*/
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                            child: Text(
                              'DashBoard',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                            child: Text(
                              'Redeem Coupon',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      //Total Offtake
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(12),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Colors.blue[600], Colors.blue[700]])),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(14, 10, 14, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  /*2*/
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                                    child: Text(
                                      'Offtake Points',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                                    child: Text(
                                      'FY 2020-21',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                                margin: EdgeInsets.fromLTRB(14, 10, 14, 10),
                                child: IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Total Offtake",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: homeController
                                                        .totalOfftakeModel
                                                        .value
                                                        .data ==
                                                    null
                                                ? Text(
                                                    "0",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                : Text(
                                                    homeController
                                                        .totalOfftakeModel
                                                        .value
                                                        .data
                                                        .totalOfftake
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 14),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Advantage Points",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: homeController.totalPoint
                                                        .value.data ==
                                                    null
                                                ? Text(
                                                    "0",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                : Text(
                                                    homeController
                                                        .totalPoint
                                                        .value
                                                        .data
                                                        .primaryPoints
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 14),
                                      VerticalDivider(
                                          color: Colors.white, thickness: 1),
                                      SizedBox(width: 14),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Current QTR",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: homeController
                                                        .totalOfftakeModel
                                                        .value
                                                        .data ==
                                                    null
                                                ? Text(
                                                    "0",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                : Text(
                                                    homeController
                                                        .totalOfftakeModel
                                                        .value
                                                        .data
                                                        .quarterTotalOfftake
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 14),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Month",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: homeController
                                                        .totalOfftakeModel
                                                        .value
                                                        .data ==
                                                    null
                                                ? Text(
                                                    "0",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                : Text(
                                                    homeController
                                                        .totalOfftakeModel
                                                        .value
                                                        .data
                                                        .monthTotalOfftake
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      //Warranty Points
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(12),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Colors.blue[600], Colors.blue[700]])),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(14, 10, 14, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  /*2*/
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                                    child: Text(
                                      'Warranty Points',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                                    child: Text(
                                      'Apr’19 to Till Now',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                                margin: EdgeInsets.fromLTRB(14, 10, 14, 10),
                                child: IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Total Points",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: homeController
                                                        .dashboarcountModel
                                                        .value
                                                        .data ==
                                                    null
                                                ? Text(
                                                    "0",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                : Text(
                                                    homeController
                                                        .dashboarcountModel
                                                        .value
                                                        .data
                                                        .dashboardCount
                                                        .totalPoints
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 18),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Total Customer",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: homeController
                                                        .dashboarcountModel
                                                        .value
                                                        .data ==
                                                    null
                                                ? Text(
                                                    "0",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                : Text(
                                                    homeController
                                                        .dashboarcountModel
                                                        .value
                                                        .data
                                                        .dashboardCount
                                                        .customerCount
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 26),
                                      VerticalDivider(
                                          color: Colors.white, thickness: 1),
                                      SizedBox(width: 14),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "PCR Tyre",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: homeController
                                                        .dashboarcountModel
                                                        .value
                                                        .data ==
                                                    null
                                                ? Text(
                                                    "0",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                : Text(
                                                    homeController
                                                        .dashboarcountModel
                                                        .value
                                                        .data
                                                        .dashboardCount
                                                        .pcrWheelerTyre
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 14),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "2 Wheeler",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: homeController
                                                        .dashboarcountModel
                                                        .value
                                                        .data ==
                                                    null
                                                ? Text(
                                                    "0",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                : Text(
                                                    homeController
                                                        .dashboarcountModel
                                                        .value
                                                        .data
                                                        .dashboardCount
                                                        .twoThreeWheelerTyre
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      //Grow Your Business
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                                child: Text(
                                  "Grow Your Business (Run a campaign)",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              SizedBox(height: 10),
                              homeController.growMore.value.data == null
                                  ? Container()
                                  : Container(
                                      height: 70,
                                      child: Expanded(
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: homeController
                                                .growMore.value.data.length,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                height: 90,
                                                width: 90,
                                                child: Column(
                                                  children: [
                                                    Container(

                                                      width: 30,
                                                      height: 30,
                                                      color: Colors.yellow,
                                                      child: Image.network(
                                                        homeController
                                                            .growMore
                                                            .value
                                                            .data[index]
                                                            .imageUrl
                                                            .toString(),
                                                      ),
                                                    ),
                                                    Text(homeController.growMore
                                                        .value.data[index].name
                                                        .toString())
                                                  ],
                                                ),
                                              );
                                            }),
                                      )),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                                child: Text(
                                  "Engage Your Customers (Run a campaign)",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                  height: 100,
                                  child: Expanded(
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          child: Text(
                                            "${index}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                        );
                                      },
                                    ),
                                  )),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 15, 10, 10),
                                child: Text(
                                  "Balance SMS Credits : 0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      //Enagage Customer
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                                child: Text(
                                  "PCR Scheme",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                    children: [
                                      Text(
                                        "Target",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "0",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )),
                                  Expanded(
                                      child: Column(
                                    children: [
                                      Text(
                                        "Achievement",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "0",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )),
                                  Expanded(
                                      child: Column(
                                    children: [
                                      Text(
                                        "Percentage",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "0",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Card(
                        elevation: 5,
                        child: ClipPath(
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: CommonColor.color[150],
                                        width: 5))),
                            child: Container(
                              width: double.infinity,
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Redemption Catalogue",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "You have earned 0 Points in",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3))),
                        ),
                      ),
                      SizedBox(height: 10),
                      Card(
                        elevation: 5,
                        child: ClipPath(
                          child: Container(
                            width: double.infinity,
                            height: 70,
                            decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: CommonColor.color[150],
                                        width: 5))),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Warranty Catalogue",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  homeController
                                              .dashboarcountModel.value.data ==
                                          null
                                      ? RichText(
                                          text: new TextSpan(
                                            // Note: Styles for TextSpans must be explicitly defined.
                                            // Child text spans will inherit styles from parent
                                            style: new TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.black,
                                            ),
                                            children: <TextSpan>[
                                              new TextSpan(text: "You have"),
                                              new TextSpan(
                                                  text: "0",
                                                  style: new TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              new TextSpan(
                                                  text: "Warranty points."),
                                            ],
                                          ),
                                        )
                                      : RichText(
                                          text: new TextSpan(
                                            // Note: Styles for TextSpans must be explicitly defined.
                                            // Child text spans will inherit styles from parent
                                            style: new TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.black,
                                            ),
                                            children: <TextSpan>[
                                              new TextSpan(text: "You have "),
                                              new TextSpan(
                                                  text: homeController
                                                          .dashboarcountModel
                                                          .value
                                                          .data
                                                          .dashboardCount
                                                          .totalPoints
                                                          .toString() +
                                                      " ",
                                                  style: new TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              new TextSpan(
                                                  text: "Warranty points."),
                                            ],
                                          ),
                                        ),
                                ],
                              ),
                            ),
                          ),
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3))),
                        ),
                      ),
                      SizedBox(height: 10),
                      Card(
                        elevation: 5,
                        child: ClipPath(
                          child: Container(
                            width: double.infinity,
                            height: 70,
                            decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: CommonColor.color[150],
                                        width: 5))),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Merchandise Catalogue",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "You have earned 0 balance coins",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3))),
                        ),
                      ),
                    ],
                  );
                }))));
  }
}
