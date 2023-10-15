import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hack_lu/config.dart';
import 'package:http/http.dart' as http;

class SendDataApi extends StatefulWidget {
  const SendDataApi({super.key});

  @override
  State<SendDataApi> createState() => _SendDataApiState();
}

class _SendDataApiState extends State<SendDataApi> {
  // void RegUser() async {
  void loginUser(BuildContext context) async{
    var reqBody = {
      "email":"shafinnafiullah@gmail.com",

    };

    var response = await http.post(Uri.parse(login),
        headers: {"Content-Type":"application/json"},
        body: jsonEncode(reqBody)
    );


    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse['msg']);
    print(jsonResponse);

    if(response.statusCode == 200){

      var myToken = jsonResponse['token'];
      //prefs.setString('token', myToken);
      print(myToken);
    }else{
      print('Something went wrong');
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
       // RegUser();
          loginUser(context);

        },
        child: Text("Send Data"),
        ),
      ),
    );
  }
}
