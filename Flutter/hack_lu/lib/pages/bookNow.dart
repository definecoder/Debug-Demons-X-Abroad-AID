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

class BookNowPage extends StatefulWidget {
  const BookNowPage(
      {
      //required this.token ,
      super.key});

  //final token;
  @override
  State<BookNowPage> createState() => _BookNowPageState();
}

class _BookNowPageState extends State<BookNowPage> {
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
                      "BOOK YOUR EXPERT"
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
                  10.heightBox,
                  (degree + ", " + university)
                      .text
                      .size(15)
                      .color(Color.fromARGB(255, 32, 37, 41))
                      .italic
                      .make(),
                  15.heightBox,
                  (state + ", " + country)
                      .text
                      .size(15)
                      .color(Color.fromARGB(255, 32, 37, 41))
                      .bold
                      .make(),
                  60.heightBox,
                  ElevatedButton(
                    onPressed: () {
                      showImageDialog(context);
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(
                              255, 170, 26, 139)), // Button background color
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
                    child: Text('Pay with Bkash'),
                  ),
                  40.heightBox,
                  ElevatedButton(
                    onPressed: () {
                      showImageDialog(context);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(
                              255, 255, 212, 23)), // Button background color
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
                    child: Text('Pay with PayPal'),
                  ),
                  40.heightBox,
                  ElevatedButton(
                    onPressed: () {
                      showImageDialog(context);
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(
                              186, 42, 41, 41)), // Button background color
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
                    child: Text(
                      'Pay with Credit Card',
                    ),
                  ),
                  120.heightBox,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
