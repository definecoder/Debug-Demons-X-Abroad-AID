import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hack_lu/model/profilecard.dart';
import 'package:hack_lu/pages/bookNow.dart';
import 'package:hack_lu/pages/dashboard.dart';
import 'package:hack_lu/pages/form/form_four.dart';
import 'package:hack_lu/config.dart';
import 'package:http/http.dart' as http;

class FormThree extends StatefulWidget {
  const FormThree({
    super.key,
    required this.exparties,
  });
  final List<String> exparties;

  @override
  _FormThreeState createState() => _FormThreeState();
}

class _FormThreeState extends State<FormThree> {
  final GlobalKey<FormState> _formKey3 = GlobalKey();
  String language = "";
  String bio = "";
  String background = "";
  String achievement = "";
  String facebook = "";
  String whatsapp = "";
  String linkedin = "";
  String hour_rate = "";
  double heighting = 35.0;

  void RegUser() async {
    var regBody = {
      "name": widget.exparties[0],
      "email": widget.exparties[1],
      "phone": widget.exparties[2],
      "gender": widget.exparties[3],
      "photoLink": widget.exparties[4],
      "originCountry": widget.exparties[5],
      "originCollage": widget.exparties[6],
      "country": widget.exparties[13],
      "state": widget.exparties[12],
      "university": widget.exparties[11],
      "fieldOfStudy": widget.exparties[14],
      "program": widget.exparties[15],
      "session": widget.exparties[16],
      "language": widget.exparties[17],
      "expertise": "Uk Visa",
      "bio": widget.exparties[18],
      "background": widget.exparties[19],
      "achievements": widget.exparties[20],
      "socialMedia": {
        "linkedin": widget.exparties[23],
        "twitter": "leotwt",
      },
      "hourlyCharge": widget.exparties[24],
      "visaPhotoLink": widget.exparties[9],
      "studentIDPhotoLink": widget.exparties[10],
      "locationX": widget.exparties[7],
      "locationY": widget.exparties[8],
    };
    widget.exparties.clear();
    var response = await http.post(Uri.parse(expertApi),
        headers: {"Content-type": "application/json"},
        body: jsonEncode(regBody));

    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse['status']);
  }

  void _formTwoSubimt() {
    // print(language);
    // print(bio);
    // print(background);
    // print(achievement);
    // print(facebook);
    // print(whatsapp);
    // print(linkedin);
    // print(hour_rate);

    widget.exparties.add(language);
    widget.exparties.add(bio);
    widget.exparties.add(background);
    widget.exparties.add(achievement);
    widget.exparties.add(facebook);
    widget.exparties.add(whatsapp);
    widget.exparties.add(linkedin);
    widget.exparties.add(hour_rate);

    RegUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Description"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Form(
                key: _formKey3,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Language'),
                      onChanged: (value) {
                        setState(() {
                          language = value;
                          // print(value);
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Bio'),
                      onChanged: (value) {
                        setState(() {
                          bio = value;
                          //  print(value);
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Background'),
                      onChanged: (value) {
                        setState(() {
                          background = value;
                          //  print(value);
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Achievement'),
                      onChanged: (value) {
                        setState(() {
                          achievement = value;
                          //  print(value);
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Facebook'),
                      //keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          facebook = value;
                          // print(value);
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Whatsapp'),
                      onChanged: (value) {
                        setState(() {
                          whatsapp = value;
                          // print(value);
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Linkedin'),
                      onChanged: (value) {
                        setState(() {
                          linkedin = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Hour Rate'),
                      onChanged: (value) {
                        setState(() {
                          hour_rate = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            //_formTwoSubimt();
                            // int i=0;
                            //   widget.exparties.forEach((item) {
                            //     print(i);
                            //     i++;

                            //     print(item);
                            //   });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeDashboard()));
                          },
                          child: Text("Submit"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
