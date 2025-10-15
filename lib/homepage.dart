import 'package:flutter/material.dart';
import 'package:flutter_application_1/course.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});



  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> music = [
      {
        "image": AssetImage("assets/images/basic_course.png"),
        "title": "Basics",
        "subtitle": "COURSE",
        "time": "3-10 MIN"
      },
      {
        "image": AssetImage("assets/images/relaxation_music.png"),
        "title": "Relaxation",
        "subtitle": "MUSIC",
        "time": "3-10 MIN"
      }
    ];

    List<Map<String,dynamic>> recomendedMusic = [
      {
        "image": AssetImage("assets/images/focus.png"),
        "title": "Focus",
        "subtitle": "MEDITATION",
        "time": "3-10 MIN"
      },
      {
        "image": AssetImage("assets/images/happiness.png"),
        "title": "Relaxation",
        "subtitle": "MUSIC",
        "time": "3-10 MIN"
      },
      {
        "image": AssetImage("assets/images/focus.png"),
        "title": "Focus",
        "subtitle": "MEDITATION",
        "time": "3-10 MIN"
      }
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: SizedBox(height: 30,width: 168,child: Image(image: AssetImage("assets/images/silent_moon_image.png")),),
      ),
      body: Padding(padding: EdgeInsets.only(top: 20,left: 20,right: 20),child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Good Morning, Afsar",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.w600),),
          Text("We Wish you have a good day",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w100),),
          SizedBox(height: 20),
          SizedBox(
            height: 210,
            width: double.infinity,
            child: ListView.builder(
              itemCount: music.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return Container(margin: EdgeInsets.only(right: 10), height: 210,width: 177,decoration: BoxDecoration(
                image: DecorationImage(image: music[index]["image"])
              ), child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Text(music[index]['title'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),),
                  Text(music[index]['subtitle'],style: TextStyle(fontSize: 11,color: Colors.white),),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Text(music[index]['time'],style: TextStyle(fontSize: 11,color: Colors.white),),
                    SizedBox(height: 35,width: 70, child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Course(),));
                    }, style: ElevatedButton.styleFrom(backgroundColor: Colors.white,padding: EdgeInsets.all(0)),child: Text("START",style: TextStyle(fontSize: 12),)))
                  ],)
                
                ],),
              ),);
            },),
          ),
          SizedBox(height: 20,),
          Container(height: 95,width: double.infinity , decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(image: AssetImage("assets/images/daily_thought.png"),fit: BoxFit.fill)
          ), child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Daily Thought",style: TextStyle(color: Colors.white,fontSize: 18),),
                Row(children: [
                  Text("MEDITATION",style: TextStyle(color: Colors.white,fontSize: 11)),
                  Text('.',style: TextStyle(color: Colors.white,fontSize: 11)),
                  Text("3-10 MIN",style: TextStyle(color: Colors.white,fontSize: 11))
                ],)
              ],),
              IconButton(onPressed: (){}, icon: Icon(Icons.play_circle,color: Colors.white,size:40,))
            ],),
          )),
          SizedBox(height: 15,),
          Text("Recomended for you",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
          SizedBox(height: 10,),
          SizedBox(height: 165, child: ListView.builder
          (itemCount: recomendedMusic.length, scrollDirection: Axis.horizontal, itemBuilder: (context, index) {
            return Container(margin: EdgeInsets.only(right: 10), height: 162,width: 162,child: Column(children: [
              SizedBox(height: 113,width: 162, child: Image(image: recomendedMusic[index]['image'],fit: BoxFit.cover,)),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(recomendedMusic[index]["title"],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
              Row(children: [
                Text(recomendedMusic[index]["subtitle"],style: TextStyle(fontSize: 11,fontWeight: FontWeight.normal)),
                Text(".",style: TextStyle(fontSize: 11,fontWeight: FontWeight.normal)),
                Text(recomendedMusic[index]["time"],style: TextStyle(fontSize: 11,fontWeight: FontWeight.normal))
              ],)
              ],)
            ],),);
          },), )
        ],),
      ),),
    );
  }
}