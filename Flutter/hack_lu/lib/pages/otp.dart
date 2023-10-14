import 'package:flutter/material.dart';
import 'package:email_auth/email_auth.dart';

class EmailOTPVerificationPage extends StatefulWidget {
  EmailOTPVerificationPage({required this.email , super.key});

  final String email;

  @override
  _EmailOTPVerificationPageState createState() =>
      _EmailOTPVerificationPageState();
}

class _EmailOTPVerificationPageState extends State<EmailOTPVerificationPage> {
  String otp = '';
  @override
  void initState() {
    // TODO: implement initState
    sendOTP();

    super.initState();
  }


  void sendOTP() async {
    print(widget.email);
    EmailAuth emailAuth = EmailAuth(sessionName: "Test Session");
    var res = await emailAuth.sendOtp(

        recipientMail: widget.email
    );
    if (res) {
      print("Verification Code Sent!");
    } else {
      print("Failed to send the verification code");
    }
  }

  void verifyOTP(String mainOtp) async {
    EmailAuth emailAuth = new EmailAuth(sessionName: "Test Session");
    var res = emailAuth.validateOtp(
        recipientMail: widget.email,
        userOtp: mainOtp
    );
    if (res) {
      print("Email Verified!");
    } else {
      print("Invalid Verification Code");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email OTP Verification'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Please enter the 6-digit OTP sent to your email',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildOTPTextField(1),
                  buildOTPTextField(2),
                  buildOTPTextField(3),
                  buildOTPTextField(4),
                  buildOTPTextField(5),
                  buildOTPTextField(6),
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Implement OTP verification logic here
                  if (otp.length == 6) {
                    // Perform OTP verification
                    // You can add your verification logic here
                    verifyOTP(otp.toString());
                    print(otp.toString());
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter a valid 6-digit OTP'),
                      ),
                    );
                  }
                },
                child: Text('Verify OTP'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOTPTextField(int index) {
    return Container(
      width: 50.0,
      child: TextField(
        textAlign: TextAlign.center,
        maxLength: 1,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          counterText: '',
        ),
        onChanged: (value) {
          if (value.isNotEmpty) {
            if (index < 6) {
              FocusScope.of(context).nextFocus();
            } else {
              FocusScope.of(context).unfocus();
            }
          } else {
            if (index > 1) {
              FocusScope.of(context).previousFocus();
            }
          }
          updateOTP(index, value);
        },
      ),
    );
  }

  void updateOTP(int index, String value) {
    setState(() {
      if (value.isNotEmpty) {
        otp += value;
      } else {
        otp = otp.substring(0, otp.length - 1);
      }
    });
  }
}
