import 'package:flutter/material.dart';

class UserFormTwo extends StatefulWidget {
  @override
  _UserFormTwoState createState() => _UserFormTwoState();
}

class _UserFormTwoState extends State<UserFormTwo> {
  final GlobalKey<FormState> _formKey2 = GlobalKey();
  String cur_edu = "";
  String dest_country = "";
  String goal = "";
  String study_field= "";
  String question = "Bsc";
  //String session = "";
  double heighting= 35.0;


  void _formTwoSubimt() {
    print(cur_edu);
    print(dest_country);
    print(goal);
    print(study_field);
    print(question);
    //print(session);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Current Academic Information"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Form(
                key: _formKey2,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Current Education'),
                      onChanged: (value) {
                        setState(() {
                          cur_edu = value;
                          // print(value);
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Desitnation Country'),
                      onChanged: (value) {
                        setState(() {
                          dest_country = value;
                          //  print(value);
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Goal'),
                      onChanged: (value) {
                        setState(() {
                          goal = value;
                          //  print(value);
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Field of Study'),
                      //keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          study_field = value;
                          // print(value);
                        });
                      },
                    ),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Question'),
                      onChanged: (value) {
                        setState(() {
                          question = value;
                          // print(value);
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
                          onPressed: _formTwoSubimt,
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