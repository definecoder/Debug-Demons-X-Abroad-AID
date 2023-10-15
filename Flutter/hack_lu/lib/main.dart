import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:hack_lu/apiTest.dart';
import 'package:hack_lu/pages/dashboard.dart';
import 'package:hack_lu/pages/form/form_four.dart';
import 'package:hack_lu/pages/form/form_one.dart';
import 'package:hack_lu/pages/form/form_three.dart';
import 'package:hack_lu/pages/form/form_two.dart';
import 'package:hack_lu/pages/form/user_form_one.dart';
import 'package:hack_lu/pages/form/user_form_two.dart';
import 'package:hack_lu/pages/loginScreen.dart';
import 'package:hack_lu/push_noti/firebase_not.dart';
import 'package:hack_lu/widgets/map_screen.dart';
import 'package:hack_lu/widgets/profile_cart.dart';


import 'firebase_options.dart';
=======
import 'package:hack_lu/SchedulePage.dart';
import 'package:hack_lu/pages/bookingAcceptPage.dart';
import 'package:hack_lu/pages/dashboard.dart';
import 'package:hack_lu/pages/myBookings.dart';
import 'package:hack_lu/pages/profile.dart';
import 'package:hack_lu/widgets/profile_cart.dart';

>>>>>>> f10e085965b5f5c14d39982404eb8d7c54c4574d
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import './pages/bookNow.dart';
//import 'services/shared_service.dart';

Widget _defaultHome = const LoginPage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
<<<<<<< HEAD
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //await FirebaseApi().initNotifications();
=======
>>>>>>> f10e085965b5f5c14d39982404eb8d7c54c4574d

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 17, 71, 87)),
      ),
<<<<<<< HEAD
      home: FormOne(),
     //  routes: {
     //    '/': (context) => _defaultHome,
     //    '/login': (context) => const LoginPage(),
     //    '/register': (context) => const RegisterPage(),
     //  },
=======
      home: SchedulePage(),
      //  routes: {
      //    '/': (context) => _defaultHome,
      //    '/login': (context) => const LoginPage(),
      //    '/register': (context) => const RegisterPage(),
      //  },
>>>>>>> f10e085965b5f5c14d39982404eb8d7c54c4574d
    );
  }
}
