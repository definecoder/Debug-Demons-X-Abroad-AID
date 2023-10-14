import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({
    super.key,
    required this.id,
    required this.name,
    required this.university,
    required this.support_area,
    required this.description,
    required this.location,
    required this.hourRate,
    required this.total_service,
    required this.total_income,

    required this.imgList,

  });


  final String id;
  final String name; // any bangladeshi or indian name
  final String university; // any european university
  final String support_area; // any university or country within 7 letter
  final String description; // shortly describe withing 5lines. describre about how you are come to abroad and your expertise field.
  final String location; // any european country
  final String hourRate; // 10 to 100
  final String total_service; // 0 to 200
  final String total_income;
  final List<String> imgList;

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {


  // final List<String> imgList = [
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0JEPYVeocq2G-64yIbuwAgimJnH-5i_g2LWxudJ1hRSdecwIpf5HErnafUyJlPpX0_Lw&usqp=CAU",
  //   "https://previews.123rf.com/images/milkos/milkos1909/milkos190900714/129605687-student-guy-posing-to-camera-with-books-having-break-in-university-campus.jpg",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0JEPYVeocq2G-64yIbuwAgimJnH-5i_g2LWxudJ1hRSdecwIpf5HErnafUyJlPpX0_Lw&usqp=CAU",
  //   // "assets/images/logo.png",
  // ];


  @override

  Widget build(BuildContext context) {
    Widget profiles = Column(
      children: [

        Row(
          children: [
            CircleAvatar(
              child: Icon(Icons.circle),
            ),
            //     Column(
            //       children: [
            //         Text(widget.name, style: TextStyle(
            //           fontSize: 6, fontWeight: FontWeight.bold
            //         ),),
            //         Text("Studying in ${widget.university}, ${widget.support_area} Supporter",
            //           style: TextStyle(
            //             fontStyle: FontStyle.italic,
            //           ),
            //         )
            //
            //       ],
            //     ),
            //     SizedBox(
            //       width: 8,
            //     ),
            //
            //   ],
            // ),
            // SizedBox(
            //   height: 8,
            // ),
            // Padding(
            //   padding: EdgeInsets.all(5.0),
            //   child: Text(widget.description),
            // ),
            // SizedBox(
            //   width: 8,
            // ),
            // CarouselSlider(
            //   options: CarouselOptions(height: 300.0),
            //   items: widget.imgList.map((item) => Container(
            //     child: Center(
            //       child: Image.network(
            //         item,
            //         fit: BoxFit.contain,
            //         width: 800,
            //       ),
            //     ),
            //   )).toList(),
            // ),
            //  Row(
            //   children: [
            //     Icon(Icons.location_on),
            //     Text(widget.location),
            //     SizedBox(
            //       width: 8,
            //     ),
            //     Icon(Icons.monetization_on_outlined),
            //     Text("${widget.hourRate} /hour"),
            //     SizedBox(
            //       width: 8,
            //     ),
            //     Icon(Icons.people),
            //     Text(widget.total_service),
            //     SizedBox(
            //       width: 8,
            //     ),
            //     Icon(Icons.monetization_on_rounded),
            //     Text(widget.total_income),
          ],
        ),


      ],

    );



    return Padding(

        padding: EdgeInsets.only(left: 5, bottom: 5, top: 0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.circle),
                ),
                SizedBox(width: 6,),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name,style: TextStyle(
    fontSize: 18,),),
                    Text('Studies in ${widget.university}, ${widget.support_area} Visa Expert ',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.description),
            ),
            SizedBox(
              height: 8,
            ),
            CarouselSlider(
              options: CarouselOptions(height: 270.0),
              items: widget.imgList.map((item) => Container(
                child: Center(
                  child: Image.network(
                    item,
                    fit: BoxFit.contain,
                    width: 800,
                  ),
                ),
              )).toList(),
            ),

             Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.location_on),
                      Text(widget.location),
                    ],
                  ),
                ),

                // SizedBox(
                //   width: 8,
                // ),
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.monetization_on_outlined),
                      Text("${widget.hourRate} /hour"),
                    ],
                  ),
                ),
                
                
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.people),
                      Text(widget.total_service),
                    ],
                  ),
                ),
                
                
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.monetization_on_rounded),
                      Text(widget.total_income),
                    ],
                  ),
                ),
                
          ],
        ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 500,
              height: 4,
              color: Colors.blueGrey,
            )
          ],
        ),
    );
  }
}
