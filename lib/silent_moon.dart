import 'package:flutter/material.dart';
import 'package:flutter_application_1/reminders.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SilentMoon extends StatelessWidget {
  const SilentMoon({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> chooseTopicGrid = [
      {
        "name": "Reduce Stress",
        "image": AssetImage("assets/images/choose_topic_grid_1.png")
      },
      {
        "name": "Improve Performanee",
        "image": AssetImage("assets/images/choose_topic_grid_2.png")
      },
      {
        "name": "Reduce Anxiety",
        "image": AssetImage("assets/images/choose_topic_grid_3.png")
      },
      {
        "name": "Increase Happiness",
        "image": AssetImage("assets/images/choose_topic_grid_4.png")
      },
      {
        "name": "Personal Growth",
        "image": AssetImage("assets/images/choose_topic_grid_5.png")
      },
      {
        "name": "Better Sleep",
        "image": AssetImage("assets/images/choose_topic_grid_6.png")
      },
      {
        "name": "Reduce Stress",
        "image": AssetImage("assets/images/choose_topic_grid_7.png")
      },
      {
        "name": "Better Sleep",
        "image": AssetImage("assets/images/choose_topic_grid_6.png")
      },

    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 56,left: 20,right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("What Brings you",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600),),
          Text("to Silent Moon?",style: TextStyle(fontSize: 28,fontWeight: FontWeight.normal)),
          SizedBox(height: 10,),
          Text("choose a topic to focuse on:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal)),
          Expanded(child: MasonryGridView.count(scrollDirection: Axis.vertical, mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 2, itemCount: chooseTopicGrid.length, itemBuilder: (context, index) {
            return InkWell( onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Reminders(),));
            },
              child: SizedBox(
                height: index.isEven? 200:162,
                child: Stack(children: [
                  Image(image: chooseTopicGrid[index]["image"]),
                  Positioned(left: 10,bottom: 20,  child: SizedBox(height: 46,width: 131, child: Text(chooseTopicGrid[index]["name"],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,  color: index.isOdd? Colors.white:Colors.black),)))
                ],),
              ),
            );
          },))
        
        ],),
      ),
    );
  }
}