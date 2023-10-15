import 'package:flutter/material.dart';
import 'package:hack_lu/SchedulePage.dart';
import 'package:hack_lu/data/dummy_profile_data.dart';
import 'package:hack_lu/pages/form/form_one.dart';
import 'package:hack_lu/pages/profile.dart';
import 'package:hack_lu/widgets/main_drawer.dart';
import 'package:hack_lu/widgets/profile_cart.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard(
      {
      //required this.token ,
      super.key});

  //final token;
  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  void openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  late String email;
  @override
  void initState() {
    // TODO: implement initState
    // Map<String,dynamic> jwtDecodedToken = JwtDecoder.decode((widget.token));

    //email = jwtDecodedToken['email'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: dummyProfiles.length,
      itemBuilder: (ctx, index) => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProfilePage()));
        },
        child: ProfileCard(
          id: dummyProfiles[index].id,
          name: dummyProfiles[index].name,
          university: dummyProfiles[index].university,
          support_area: dummyProfiles[index].support_area,
          description: dummyProfiles[index].description,
          location: dummyProfiles[index].location,
          hourRate: dummyProfiles[index].hourRate,
          total_service: dummyProfiles[index].total_service,
          total_income: dummyProfiles[index].total_income,
          imgList: dummyProfiles[index].images,
        ),
      ),
    );

    Size size = MediaQuery.of(context).size;

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              openDrawer();
            },
          ),
          title: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                // Handle your logic here
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SchedulePage()));
              },
            ),
          ],
        ),
        drawer: MainDrawer(),
        body: content);
  }
}
