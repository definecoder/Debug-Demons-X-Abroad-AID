import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:hack_lu/config.dart';
import 'package:http/http.dart' as http;

import 'form_two.dart';

class FormFour extends StatefulWidget {
  const FormFour({
    super.key,
    required this.exparties,


  });
  final List<String> exparties;

  @override
  _FormFourState createState() => _FormFourState();
}

class _FormFourState extends State<FormFour> {
  final GlobalKey<FormState> _formKey4 = GlobalKey();

   File? _image;
   UploadTask? uploadTask;

  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }
  PlatformFile? pickFile;
  String visa_id = "";
  String student_id = "";

  List<String> versity_journey= [];
  double heighting= 35.0;



  // Future uploadFile() async {
  //
  //
  //   final path = 'file/${_image!}';
  //   final file = File(_image!.path!);
  // }


  void _formTwoSubimt() {
    print(visa_id);
    print(student_id);
  //  print(location);
    widget.exparties.add("https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Indian_Tourist_Visa_2016_stamped.jpg/1200px-Indian_Tourist_Visa_2016_stamped.jpg");
    widget.exparties.add("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/student-id-card-design-template-4b9a4f05b54f5a1e532d867f242b00ff_screen.jpg?ts=1672130403");


  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   widget.exparties.forEach((item) {
  //     print(item);
  //   });
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    Widget contImg= Text("No file selected");

    return Scaffold(
      appBar: AppBar(
        title: Text("Authenticate Yourself"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Form(
                key: _formKey4,
                child: Column(
                  children: <Widget>[
                    Text("Visa Photo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    )
                    ),

                    Row(
                      children: [
                        ElevatedButton(onPressed: (){
                          //selectFile();
                          _getImage();




                        }, child: Text("Select File")),
                        ElevatedButton(onPressed: (){}, child: Text("Upload File")),
                      ],
                    ),
                    _image == null
                        ? Text('No image selected.')
                        : Image.file(_image!, width: 200, height: 200),
                    SizedBox(
                      height: heighting,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Student Id'),
                      onChanged: (value) {

                        setState(() {
                          student_id = value;
                          //  print(value);
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
                          onPressed: (){
                            _formTwoSubimt();

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=>FormTwo(exparties: widget.exparties,)));
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