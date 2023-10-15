import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hack_lu/data/circuler_image.dart';
import 'package:hack_lu/data/dummy_profile_data.dart';
import 'package:hack_lu/widgets/main_drawer.dart';
import 'package:hack_lu/widgets/profile_cart.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyBookingsPage extends StatefulWidget {
  const MyBookingsPage(
      {
      //required this.token ,
      super.key});

  //final token;
  @override
  State<MyBookingsPage> createState() => _MyBookingPageState();
}

class _MyBookingPageState extends State<MyBookingsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  void openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  void initState() {
    // TODO: implement initState
    // Map<String,dynamic> jwtDecodedToken = JwtDecoder.decode((widget.token));

    //email = jwtDecodedToken['email'];
    super.initState();
  }

  var imageURL =
      "https://scontent-ccu1-1.xx.fbcdn.net/v/t39.30808-6/280253639_3238644329741905_8497351295383880684_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG3J1g8iv5a67OOJqXaRx9lWnFQx4tehPNacVDHi16E82KBKL-pUwMEurOG-b2qsNlqq1eKol2KLmGuLjXIog2o&_nc_ohc=3ObCOy7-7RoAX9gNdVi&_nc_ht=scontent-ccu1-1.xx&oh=00_AfAt4cEzsgn6iBeU8cMgnKH3DaCpsBkTB5a87is44iIMdQ&oe=652F8A3E";
  var name = "Mehrajul Islam";
  var university = "SUST";
  var state = "Sylhet", country = "Bangladesh";
  var facebookUrl = "https://www.facebook.com/Codermehraj/";
  var bioText =
      "I am John Smith, a driven MIT Computer Science student known for my problem-solving abilities and active participation in coding competitions and hackathons.";
  var backgroundText =
      "I am John Smith, a driven MIT Computer Science student known for my problem-solving abilities and active participation in coding competitions and hackathons.";
  var achievementText =
      "I am John Smith, a driven MIT Computer Science student known for my problem-solving abilities and active participation in coding competitions and hackathons.";
  var studyField = "Engineering";
  var degree = "Bachalors in Software Engineering";
  var hourlyrate = "15";
  var totalEarning = "125";
  var originInistitution = "Govt. Hazi Mohammad Mohsin College";
  var originCountry = "Bangladesh";

  var requestLists = [
    {
      "expertName": "Mehrajul Islam",
      "expertImage":
          "https://scontent-ccu1-1.xx.fbcdn.net/v/t39.30808-6/280253639_3238644329741905_8497351295383880684_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG3J1g8iv5a67OOJqXaRx9lWnFQx4tehPNacVDHi16E82KBKL-pUwMEurOG-b2qsNlqq1eKol2KLmGuLjXIog2o&_nc_ohc=3ObCOy7-7RoAX9gNdVi&_nc_ht=scontent-ccu1-1.xx&oh=00_AfAt4cEzsgn6iBeU8cMgnKH3DaCpsBkTB5a87is44iIMdQ&oe=652F8A3E",
      "rate": "35\$ per hour",
      "Status": "Scheduled",
      "date": "16/10/2023",
      "Time": "10:00 PM"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            30.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "MY BOOKINGS"
                    .text
                    .size(32)
                    .bold
                    .color(Color.fromARGB(255, 32, 64, 181))
                    .make(),
              ],
            ),
            20.heightBox,
            Expanded(
              child: SingleChildScrollView(
                child: requestLists.length == 0
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child:
                                'No Boonkings yet!'.text.bold.size(20).make(),
                          ),
                          Image.asset('assets/waiting.png', fit: BoxFit.cover)
                              .box
                              .height(200)
                              .make(),
                        ],
                      )
                    : Column(children: [
                        Container(
                          width: .91 * context.width,
                          height: .91 * context.width * .45,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(108, 91, 203, 237),
                              borderRadius: BorderRadius.circular(25.0)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              20.widthBox,
                              CirculerImage(imageURL, 0.17 * context.width),
                              20.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  name.text
                                      .fontFamily('popins')
                                      .size(22)
                                      .color(Colors.black)
                                      .fontWeight(FontWeight.bold)
                                      .make(),
                                  10.heightBox,
                                  ("Studies in " + university)
                                      .text
                                      .fontFamily('popins')
                                      .size(14)
                                      .color(Colors.black)
                                      .make(),
                                  10.heightBox,
                                  ("Status : ${requestLists[0]['Status']}")
                                      .text
                                      .bold
                                      .italic
                                      .fontFamily('popins')
                                      .size(14)
                                      .color(Colors.black)
                                      .make(),
                                  10.heightBox,
                                  Row(
                                    children: [
                                      GestureDetector(
                                        child: Icon(
                                          Icons.facebook,
                                          size: 30,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      10.widthBox,
                                      FaIcon(
                                        FontAwesomeIcons.whatsapp,
                                        size: 30.0,
                                        color: Colors.green,
                                      ),
                                      10.widthBox,
                                      FaIcon(
                                        FontAwesomeIcons.linkedin,
                                        size: 30.0,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: .91 * context.width,
                          height: .91 * context.width * .45,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(108, 91, 203, 237),
                              borderRadius: BorderRadius.circular(25.0)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              20.widthBox,
                              CirculerImage(imageURL, 0.17 * context.width),
                              20.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  name.text
                                      .fontFamily('popins')
                                      .size(22)
                                      .color(Colors.black)
                                      .fontWeight(FontWeight.bold)
                                      .make(),
                                  10.heightBox,
                                  ("Studies in " + university)
                                      .text
                                      .fontFamily('popins')
                                      .size(14)
                                      .color(Colors.black)
                                      .make(),
                                  10.heightBox,
                                  ("Status : ${requestLists[0]['Status']}")
                                      .text
                                      .bold
                                      .italic
                                      .fontFamily('popins')
                                      .size(14)
                                      .color(Colors.black)
                                      .make(),
                                  10.heightBox,
                                  Row(
                                    children: [
                                      GestureDetector(
                                        child: Icon(
                                          Icons.facebook,
                                          size: 30,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      10.widthBox,
                                      FaIcon(
                                        FontAwesomeIcons.whatsapp,
                                        size: 30.0,
                                        color: Colors.green,
                                      ),
                                      10.widthBox,
                                      FaIcon(
                                        FontAwesomeIcons.linkedin,
                                        size: 30.0,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: .91 * context.width,
                          height: .91 * context.width * .45,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(108, 91, 203, 237),
                              borderRadius: BorderRadius.circular(25.0)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              20.widthBox,
                              CirculerImage(imageURL, 0.17 * context.width),
                              20.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  name.text
                                      .fontFamily('popins')
                                      .size(22)
                                      .color(Colors.black)
                                      .fontWeight(FontWeight.bold)
                                      .make(),
                                  10.heightBox,
                                  ("Studies in " + university)
                                      .text
                                      .fontFamily('popins')
                                      .size(14)
                                      .color(Colors.black)
                                      .make(),
                                  10.heightBox,
                                  ("Status : ${requestLists[0]['Status']}")
                                      .text
                                      .bold
                                      .italic
                                      .fontFamily('popins')
                                      .size(14)
                                      .color(Colors.black)
                                      .make(),
                                  10.heightBox,
                                  Row(
                                    children: [
                                      GestureDetector(
                                        child: Icon(
                                          Icons.facebook,
                                          size: 30,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      10.widthBox,
                                      FaIcon(
                                        FontAwesomeIcons.whatsapp,
                                        size: 30.0,
                                        color: Colors.green,
                                      ),
                                      10.widthBox,
                                      FaIcon(
                                        FontAwesomeIcons.linkedin,
                                        size: 30.0,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("nice");
        },
        elevation: 5,
        backgroundColor: Color.fromARGB(255, 38, 86, 197),
        label:
            "HOME".text.color(const Color.fromARGB(255, 255, 255, 255)).make(),
        icon: Icon(Icons.home, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
