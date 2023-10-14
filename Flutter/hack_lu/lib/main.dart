import 'package:flutter/material.dart';
import 'package:hack_lu/pages/dashboard.dart';
import 'package:hack_lu/widgets/profile_cart.dart';


import 'pages/login_page.dart';
import 'pages/register_page.dart';
//import 'services/shared_service.dart';

Widget _defaultHome = const LoginPage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


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
      home: HomeDashboard(),
     //  routes: {
     //    '/': (context) => _defaultHome,
     //    '/login': (context) => const LoginPage(),
     //    '/register': (context) => const RegisterPage(),
     //  },
    );
  }
}