import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LogLog extends StatefulWidget {
  const LogLog({super.key});

  @override
  State<LogLog> createState() => _LogLogState();
}

class _LogLogState extends State<LogLog> {
  @override
  void initState() {
    // TODO: implement initState
    // Map<String,dynamic> jwtDecodedToken = JwtDecoder.decode((widget.token));
    logout();
    //email = jwtDecodedToken['email'];
    super.initState();
  }

  googleLogin() async {
    print("googleLogin method Called");
    GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      var reslut = await _googleSignIn.signIn();
      if (reslut == null) {
        return;
      }

      final userData = await reslut.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);
      var finalResult =
      await FirebaseAuth.instance.signInWithCredential(credential);
      print("Result $reslut");
      print(reslut.displayName);
      print(reslut.email);
      print(reslut.photoUrl);

    } catch (error) {
      print(error);
    }
  }

  Future<void> logout() async {
    await GoogleSignIn().disconnect();
    FirebaseAuth.instance.signOut();
  }

  //Add this in main.dart in main method
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          googleLogin();

        },
        child: Text("Sign In"),
      )
    );
  }
}
