import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MeditateV2 extends StatelessWidget {
  const MeditateV2({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> meditatev2Menu = [
      {
        "name" : "All",
        "background": Color(0xFF8E97FD),
        "icon": AssetImage("assets/images/all_icon_meditate.png")
      },
      {
        "name" : "My",
        "background": Color(0xFFA0A3B1),
        "icon": AssetImage("assets/images/my_icon_meditate.png")
      },
      {
        "name" : "Anxious",
        "background": Color(0xFFA0A3B1),
        "icon": AssetImage("assets/images/anxios_icon_meditate.png")
      },
      {
        "name" : "Sleep",
        "background": Color(0xFFA0A3B1),
        "icon": AssetImage("assets/images/sleep_icon_meditate.png")
      },
      {
        "name" : "Kids",
        "background": Color(0xFFA0A3B1),
        "icon": AssetImage("assets/images/kids_icon_meditate.png")
      },
    ];

    List<Map<String,dynamic>> meditatev2Gridview = [
      {
        "name" : "7 Days of Calm",
        "image": AssetImage("assets/images/meditate_2_gridview_img1.png")
      },
      {
        "name" : "Anxiet Release",
        "image": AssetImage("assets/images/meditate_2_gridview_img2.png")
      },
      {
        "name" : "",
        "image": AssetImage("assets/images/meditate_2_gridview_img3.png")
      },
      {
        "name" : "",
        "image": AssetImage("assets/images/meditate_2_gridview_img4.png")
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
        child: ListView(children: [
          Column(children: [
            Text("Meditate",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600),),
            SizedBox(height: 11,),
            Text("we can learn how to recognize when our minds are doing their normal everyday acrobatics.",textAlign: TextAlign.center, style: TextStyle(fontSize: 16,),),
            SizedBox(height: 34,),
            SizedBox( height: 92,
              child: ListView.builder( scrollDirection: Axis.horizontal, itemCount: meditatev2Menu.length, itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 65, height: 92, child: Column(children: [
                    Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: meditatev2Menu[index]['background'],
                    ),  height: 65,width: 65, child: Center(child: IconButton(onPressed: (){}, icon: Image(image: meditatev2Menu[index]["icon"],height: 25,width: 25,)))),
                    Text(meditatev2Menu[index]['name'],style: TextStyle(fontSize: 16),)
                  ],),
                );
              },),
            ),
            SizedBox(height: 30,),
            Container(height: 95,width: double.infinity , decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(image: AssetImage("assets/images/meditate_v2_middle_image.png"),fit: BoxFit.fill)
            ), child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Daily Calm",style: TextStyle(color: Colors.black,fontSize: 18),),
                  Row(children: [
                    Text("APR 30",style: TextStyle(color: Colors.black,fontSize: 11)),
                    Text('.',style: TextStyle(color: Colors.black,fontSize: 11)),
                    Text("PAUSE PRACTICE",style: TextStyle(color: Colors.black,fontSize: 11))
                  ],)
                ],),
                IconButton(onPressed: (){}, icon: Icon(Icons.play_circle,color: Colors.black,size:40,))
              ],),
            )),
            SizedBox(height: 20,),
            SizedBox(
              height: 500, width: 500,
              child: MasonryGridView.count(mainAxisSpacing: 20, crossAxisSpacing: 24, scrollDirection: Axis.vertical, itemCount: meditatev2Gridview.length, crossAxisCount: 2, itemBuilder: (context, index) {
                return SizedBox(height: index.isEven ?195:156, child: Stack(alignment: AlignmentGeometry.center, children: [
                  Image(image: meditatev2Gridview[index]["image"]),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    height: 52,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.white70,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(bottom: 15, child: Text(meditatev2Gridview[index]["name"],style: TextStyle(fontSize:18,fontWeight: FontWeight.w600,color: Colors.white),))
                ],),);
              },),
            )


          ],)
        ],),
      ),
      // bottomNavigationBar: Container(
      //   padding: EdgeInsets.only(left: 20,right: 20),
      //   height: 90, decoration: BoxDecoration(
      //   color: Colors.white,
      // ),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      //   SizedBox(height: 66,width: 60 , child: Column(children: [
      //     Container(height: 46,width: 46,decoration: BoxDecoration(color: Colors.transparent ,shape: BoxShape.circle), child: IconButton(onPressed: (){
      //       Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
      //     }, icon: Image(image: AssetImage("assets/images/home_icon_b.png"),color: Color(0xFFA0A3B1),height: 22,),padding: EdgeInsets.all(0),),),
      //     Text("Home",style: TextStyle(fontSize: 14,color:  Color(0xFFA0A3B1),fontWeight: FontWeight.w400),)
      //   ],)),

      //   SizedBox(height: 66,width: 60 , child: Column(children: [
      //     Container(height: 46,width: 60,decoration: BoxDecoration(color: Colors.transparent ,shape: BoxShape.circle), child: IconButton(onPressed: (){}, icon: Image(image: AssetImage("assets/images/sleep_icon_b.png"),height: 22,),padding: EdgeInsets.all(0),),),
      //     Text("Sleep",style: TextStyle(fontSize: 14,color:  Color(0xFFA0A3B1),fontWeight: FontWeight.w400),)
      //   ],)),

      //   SizedBox(height: 66,width: 60 , child: Column(children: [
      //     Container(height: 46,width: 60,decoration: BoxDecoration(color: Color(0xFF8E97FD) ,shape: BoxShape.circle), child: IconButton(onPressed: (){
      //       Navigator.push(context, MaterialPageRoute(builder: (context) => MeditateV2(),));
      //     }, icon: Image(image: AssetImage('assets/images/meditate_icon_b.png'),color: Colors.white, height: 22,),padding: EdgeInsets.all(0),),),
      //     Text("Meditate",style: TextStyle(fontSize: 14,color:  Color(0xFF8E97FD),fontWeight: FontWeight.w600),)
      //   ],)),

      //   SizedBox(height: 66,width: 60 , child: Column(children: [
      //     Container(height: 46,width: 60,decoration: BoxDecoration(color: Colors.transparent,shape: BoxShape.circle), child: IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/images/music_icon_b.png'),height: 22,),padding: EdgeInsets.all(0),),),
      //     Text("Music",style: TextStyle(fontSize: 14,color:  Color(0xFFA0A3B1),fontWeight: FontWeight.w400),)
      //   ],)),

      //   SizedBox(height: 66,width: 60 , child: Column(children: [
      //     Container(height: 46,width: 60,decoration: BoxDecoration(color: Colors.transparent,shape: BoxShape.circle), child: IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/images/profile_icon_b.png'),height: 22,),padding: EdgeInsets.all(0),),),
      //     Text("Afsar",style: TextStyle(fontSize: 14,color:  Color(0xFFA0A3B1),fontWeight: FontWeight.w400),)
      //   ],)),
      // ],), ),
    );
  }
}