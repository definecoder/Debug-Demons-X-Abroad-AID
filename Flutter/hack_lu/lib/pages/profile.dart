import 'package:expandable_text/expandable_text.dart';
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

class ProfilePage extends StatefulWidget {
  const ProfilePage(
      {
      //required this.token ,
      super.key});

  //final token;
  @override
  State<ProfilePage> createState() => _ProfileState();
}

class _ProfileState extends State<ProfilePage> {
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
  var name = "Mehraj";
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
                  Row(
                    children: [
                      30.widthBox,
                      "Expert Profile"
                          .text
                          .size(22)
                          .color(Color.fromARGB(255, 71, 87, 100))
                          .fontWeight(FontWeight.bold)
                          .make(),
                    ],
                  ),
                  30.heightBox,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      40.widthBox,
                      CirculerImage(imageURL, 0.17 * context.width),
                      30.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          (state + ", " + country)
                              .text
                              .fontFamily('popins')
                              .size(14)
                              .color(Colors.black)
                              .make(),
                          10.heightBox,
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () => _launchURL(facebookUrl),
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
                  10.heightBox,
                  Divider(
                    color: const Color.fromARGB(255, 26, 22, 22),
                  ),
                  5.heightBox,
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(102, 164, 227, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(1),
                    padding: EdgeInsets.all(15),
                    width: context.width * .88,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //20.widthBox,
                          const FaIcon(
                            FontAwesomeIcons.graduationCap,
                            color: Color.fromARGB(255, 38, 86, 197),
                            size: 45,
                          ),
                          10.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              (studyField)
                                  .text
                                  .fontFamily('popins')
                                  .size(13)
                                  .color(Color.fromARGB(255, 106, 135, 203))
                                  .fontWeight(FontWeight.bold)
                                  .make(),
                              5.heightBox,
                              "Study Program"
                                  .text
                                  .fontFamily('popins')
                                  .size(20)
                                  .color(Color.fromARGB(255, 38, 86, 197))
                                  .fontWeight(FontWeight.bold)
                                  .make(),
                              2.heightBox,
                              Container(
                                width: context.width * .6,
                                child: degree.text
                                    .fontFamily('popins')
                                    .size(14)
                                    .italic
                                    .color(const Color.fromARGB(255, 0, 0, 0))
                                    .make(),
                              ),
                            ],
                          )
                        ]),
                  ),
                  3.heightBox,
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(102, 164, 227, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(15),
                    width: context.width * .88,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //20.widthBox,
                          const Icon(
                            Icons.question_mark,
                            color: Color.fromARGB(255, 38, 86, 197),
                            size: 55,
                          ),
                          5.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              "Bio"
                                  .text
                                  .fontFamily('popins')
                                  .size(20)
                                  .color(Color.fromARGB(255, 38, 86, 197))
                                  .fontWeight(FontWeight.bold)
                                  .make(),
                              10.heightBox,
                              Container(
                                width: context.width * .6,
                                child: bioText.text
                                    .fontFamily('popins')
                                    .size(14)
                                    .italic
                                    .color(const Color.fromARGB(255, 0, 0, 0))
                                    .make(),
                              ),
                            ],
                          )
                        ]),
                  ),
                  3.heightBox,
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(102, 164, 227, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(15),
                    width: context.width * .88,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //20.widthBox,
                          const FaIcon(
                            FontAwesomeIcons.globe,
                            color: Color.fromARGB(255, 38, 86, 197),
                            size: 45,
                          ),
                          10.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              "Origin"
                                  .text
                                  .fontFamily('popins')
                                  .size(20)
                                  .color(Color.fromARGB(255, 38, 86, 197))
                                  .fontWeight(FontWeight.bold)
                                  .make(),
                              5.heightBox,
                              Container(
                                width: context.width * .6,
                                child: ("I am from " +
                                        originCountry +
                                        " and My inistitution was " +
                                        originInistitution)
                                    .text
                                    .fontFamily('popins')
                                    .italic
                                    .size(14)
                                    .color(const Color.fromARGB(255, 0, 0, 0))
                                    .make(),
                              ),
                            ],
                          )
                        ]),
                  ),
                  7.heightBox,
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(102, 164, 227, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(1),
                    padding: EdgeInsets.all(15),
                    width: context.width * .88,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //20.widthBox,
                          const Icon(
                            Icons.history,
                            color: Color.fromARGB(255, 38, 86, 197),
                            size: 45,
                          ),
                          10.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              "Background"
                                  .text
                                  .fontFamily('popins')
                                  .size(20)
                                  .color(Color.fromARGB(255, 38, 86, 197))
                                  .fontWeight(FontWeight.bold)
                                  .make(),
                              10.heightBox,
                              Container(
                                width: context.width * .6,
                                child: backgroundText.text
                                    .fontFamily('popins')
                                    .size(14)
                                    .italic
                                    .color(const Color.fromARGB(255, 0, 0, 0))
                                    .make(),
                              ),
                            ],
                          )
                        ]),
                  ),
                  7.heightBox,
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(102, 164, 227, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(1),
                    padding: EdgeInsets.all(15),
                    width: context.width * .88,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //20.widthBox,
                          const FaIcon(
                            FontAwesomeIcons.star,
                            color: Color.fromARGB(255, 38, 86, 197),
                            size: 45,
                          ),
                          10.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              "Achievements"
                                  .text
                                  .fontFamily('popins')
                                  .size(20)
                                  .color(Color.fromARGB(255, 38, 86, 197))
                                  .fontWeight(FontWeight.bold)
                                  .make(),
                              10.heightBox,
                              Container(
                                width: context.width * .6,
                                child: achievementText.text
                                    .fontFamily('popins')
                                    .size(14)
                                    .italic
                                    .color(const Color.fromARGB(255, 0, 0, 0))
                                    .make(),
                              ),
                            ],
                          )
                        ]),
                  ),
                  7.heightBox,
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(102, 164, 227, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(1),
                    padding: EdgeInsets.all(15),
                    width: context.width * .88,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //20.widthBox,
                          const FaIcon(
                            FontAwesomeIcons.funnelDollar,
                            color: Color.fromARGB(255, 38, 86, 197),
                            size: 45,
                          ),
                          10.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              "YOU CAN BOOK PEIVATE SESSION AT"
                                  .text
                                  .fontFamily('popins')
                                  .size(13)
                                  .color(Color.fromARGB(255, 106, 135, 203))
                                  .fontWeight(FontWeight.bold)
                                  .make(),
                              5.heightBox,
                              (hourlyrate + "\$ PER HOUR")
                                  .text
                                  .fontFamily('popins')
                                  .size(20)
                                  .color(Color.fromARGB(255, 38, 86, 197))
                                  .fontWeight(FontWeight.bold)
                                  .make(),
                              2.heightBox,
                              Container(
                                width: context.width * .6,
                                child: ("I earned total " +
                                        totalEarning +
                                        "\$ from Abroad Aid")
                                    .text
                                    .fontFamily('popins')
                                    .size(14)
                                    .italic
                                    .color(const Color.fromARGB(255, 0, 0, 0))
                                    .make(),
                              ),
                            ],
                          )
                        ]),
                  ),
                  90.heightBox,
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
        label: "BOOK NOW"
            .text
            .color(const Color.fromARGB(255, 255, 255, 255))
            .make(),
        icon: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
