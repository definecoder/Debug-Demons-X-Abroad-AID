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

class SchedulePage extends StatefulWidget {
  const SchedulePage(
      {
      //required this.token ,
      super.key});

  //final token;
  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
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

  _launchURL(var urlLinkHere) async {
    print("faceboooook");
    const url =
        "https://www.facebook.com/Codermehraj/"; // Add your LinkedIn URL here
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
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
  var clientEmail = "mehraj@gmail.com";
  var duration = "2";
  var timeFixed = "PICK A TIME";
  var dateFixed = "PICK A DATE";

  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
        timeFixed = selectedTime.format(context);
      });
    }
  }

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        //print(selectedDate);
        dateFixed = (selectedDate.toString().split(' '))[0];
      });
    }
  }

  void showImageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: context.width,
            height: 300,
            child: Stack(
              children: [
                Image.asset("assets/images/bkash.png"),
                Column(
                  children: [
                    150.heightBox,
                    TextField(),
                  ],
                ),
              ],
            ), // Replace with your image asset path
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: SizedBox(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  15.heightBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      35.heightBox,
                      "FIX YOUR MEETING"
                          .text
                          .size(30)
                          .color(Color.fromARGB(255, 71, 87, 100))
                          .fontWeight(FontWeight.bold)
                          .make(),
                      10.heightBox,
                      Container(
                        width: context.width,
                        child: Text(""),
                      )
                    ],
                  ),
                  30.heightBox,
                  CirculerImage(imageURL, 0.17 * context.width),
                  20.heightBox,
                  name.text
                      .size(30)
                      .color(Color.fromARGB(255, 71, 87, 100))
                      .fontWeight(FontWeight.bold)
                      .make(),
                  5.heightBox,
                  ("EMAIL : " + clientEmail)
                      .text
                      .size(15)
                      .color(Color.fromARGB(255, 32, 37, 41))
                      .italic
                      .make(),
                  25.heightBox,
                  ("Duration " + duration + " Hour")
                      .text
                      .size(25)
                      .color(Color.fromARGB(255, 39, 143, 172))
                      .bold
                      .make(),
                  60.heightBox,
                  ElevatedButton(
                    onPressed: () {
                      _selectTime(context);
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(
                              255, 38, 86, 197)), // Button background color
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.all(20), // Button padding
                      ),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.bold), // Text style of the button
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20.0), // Button border radius
                        ),
                      ),
                    ),
                    child: Text(timeFixed),
                  ),
                  40.heightBox,
                  ElevatedButton(
                    onPressed: () {
                      _selectDate(context);
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(
                              255, 38, 86, 197)), // Button background color
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.all(20), // Button padding
                      ),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.bold), // Text style of the button
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20.0), // Button border radius
                        ),
                      ),
                    ),
                    child: Text(dateFixed),
                  ),
                  180.heightBox,
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("nice");
        },
        elevation: 5,
        backgroundColor: Color.fromARGB(255, 38, 86, 197),
        label: "CONFIRM MEETING"
            .text
            .color(const Color.fromARGB(255, 255, 255, 255))
            .make(),
        icon: Icon(Icons.alarm, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
