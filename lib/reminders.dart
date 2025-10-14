import 'package:flutter/material.dart';

class Reminders extends StatelessWidget {
  const Reminders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 56,left: 20,right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text("What time would you",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
          Text("like to meditate?",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
          Text("Any time you can choose but We recommend first thing in the morning.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
          Container(height: 212,color: Colors.red,),
          Text("Which day would you",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
          Text("like to meditate?",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
          Text("Everyday is best, but we recommend picking at least five.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
          Container(height: 40,color: Colors.red,),
          SizedBox(height: 63, width: double.infinity, child: ElevatedButton(onPressed: (){

          }, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF8E97FD)), child: Text("SAVE",style: TextStyle(fontSize: 14,color: Colors.white),))),
          Center(child: InkWell(onTap: () {

          }, child: Text("NO THANKS",style: TextStyle(fontSize: 14),)))

        ],),
      ),
    );
  }
}