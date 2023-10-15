import 'package:flutter/material.dart';
import 'package:hack_lu/pages/form/form_two.dart';
import 'package:hack_lu/pages/form/user_form_two.dart';
import 'package:hack_lu/widgets/map_screen.dart';

class UserFormOne extends StatefulWidget {
  @override
  _UserFormOneState createState() => _UserFormOneState();
}

class _UserFormOneState extends State<UserFormOne> {
  final GlobalKey<FormState> _formKeyu1 = GlobalKey();
  String name = "";
  String email = "";
  String location = "";
  String phone = "";
  String origin_country = "";
  String college = "";
  double heighting= 35.0;
  int flag=0;

  void _submit() {
    print(name);
    print(email);
    print(phone);
    print(origin_country);
    print(college);
  }

  @override
  Widget contenti= Text("Location", style: TextStyle(fontSize: 12,
      fontWeight: FontWeight.bold));

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users Personal Information",
          style: TextStyle(fontSize: 16,
              fontWeight: FontWeight.bold),

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(

            children: <Widget>[
              Form(
                key: _formKeyu1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Name'),
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Email'),
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),


                    TextFormField(
                      decoration: InputDecoration(labelText: 'Phone'),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          phone = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Origin Country'),
                      onChanged: (value) {
                        setState(() {
                          origin_country = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'College'),
                      onChanged: (value) {
                        setState(() {
                          college = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        ElevatedButton(
                          onPressed: (){
                            _submit();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=>UserFormTwo()));
                          },
                          child: Text("Next"),
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