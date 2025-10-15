import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_navigation_screen.dart';
import 'package:flutter_application_1/music_v2.dart';

class Course extends StatefulWidget {
  const Course({super.key});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>>maleVoice = [
      {
        "name": "Focus Attention",
        "duration": "10 MIN"
      },
      {
        "name": "Body Scan",
        "duration": "5 MIN"
      },
      {
        "name": "Making Happiness",
        "duration": "3 MIN"
      }
    ];
    List<Map<String,dynamic>>femaleVoice = [
      {
        "name": "Focus Attention female",
        "duration": "10 MIN"
      },
      {
        "name": "Body Scan female",
        "duration": "5 MIN"
      },
      {
        "name": "Making Happiness female",
        "duration": "3 MIN"
      }
    ];
    return DefaultTabController(length: 2, child: 
    Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => MainNavigationScreen(),));
        }, icon: Image(image: AssetImage('assets/images/backbutton_white.png',),)),
        actions: [
          IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/images/favorite_button_gray.png',),)),
          IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/images/download_button.png',),))
        ],
      ),
      backgroundColor: Colors.white,
      body:
      ListView(
        padding: EdgeInsets.only(top:0,bottom: 0),
        
        children: [
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)), height: 288, width: double.infinity, child: Image(image: AssetImage("assets/images/course_upper_image.png"),fit: BoxFit.fill)),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Happy Morning",style: TextStyle(fontSize: 34,fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Text("Course",style: TextStyle(fontSize: 14),),
              SizedBox(height: 20,),
              Text("Ease the mind into a restful night’s sleep  with these deep, amblent tones.",style: TextStyle(fontSize: 16),),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(children: [
                  SizedBox(height: 20,width: 20, child: Image(image: AssetImage("assets/images/favorites_icons.png"))),
                  SizedBox(width: 10,),
                  Text("24,234 Favorits"),
                ],),
                SizedBox(width: 20,),
                Row(children: [
                  SizedBox(height: 20,width: 20, child: Image(image: AssetImage("assets/images/listning_icons.png"))),
                  SizedBox(width: 10,),
                  Text("34,234 Lestening"),
                ],),
              ],),
              SizedBox(height: 20,),
              Text("Pick a Narrator",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Column(children: [
                TabBar(tabs: [
                  Tab(
                    icon: Text("MALE VOICE"),
                  ),
                  Tab(
                    icon: Text("FEMALE VOICE"),
                  )
                ]),
        
              ],),
                  SizedBox(
                    height: 500,
                    child: TabBarView( children: [
                      ListView.separated(padding: EdgeInsets.all(0), itemCount: maleVoice.length, scrollDirection: Axis.vertical, itemBuilder: (context, index) {
                        return SizedBox(
                          height: 50,
                          child: Row( children: [
                            IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MusicV2(),));
                            }, icon: Icon(Icons.play_circle,size: 40,color: Color(0xFF8E97FD),)),
                            SizedBox(width: 20,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                Text(maleVoice[index]['name'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                                Text(maleVoice[index]['duration'],style: TextStyle(color: Color(0xFFA1A4B2), fontSize: 11),)
                            ],)
                          ],),
                        );
                      }, separatorBuilder: (BuildContext context, int index) => Divider(height: 10,),),
                      ListView.separated(padding: EdgeInsets.all(0), itemCount: femaleVoice.length, scrollDirection: Axis.vertical, itemBuilder: (context, index) {
                        return Row(children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.play_circle,size: 40,color: Color(0xFF8E97FD),)),
                          SizedBox(width: 20,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                              Text(femaleVoice[index]['name'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                              Text(femaleVoice[index]['duration'],style: TextStyle(color: Color(0xFFA1A4B2), fontSize: 11),)
                          ],)
                        ],);
                      }, separatorBuilder: (BuildContext context, int index) => Divider(height: 10,),)
                    ]),
                  )
            ],),
          )
        ],),
      ),
    );
  }
}