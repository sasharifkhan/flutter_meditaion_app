import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

class Reminders extends StatelessWidget {
  const Reminders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 56,left: 20,right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("What time would you",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
          Text("like to meditate?",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
          ],),
          Text("Any time you can choose but We recommend first thing in the morning.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Color(0xFFF5F5F9),shape: BoxShape.rectangle), height: 212, child: CupertinoDatePicker(mode: CupertinoDatePickerMode.time, onDateTimeChanged: (value) {
          },),),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Which day would you",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
          Text("like to meditate?",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
          ],),
          Text("Everyday is best, but we recommend picking at least five.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
          SizedBox(height: 41,  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            InkWell(onTap: () {}, child: Container(height: 41,width: 41, decoration: BoxDecoration(border: BoxBorder.all(color: Colors.black,width: 2), color: Colors.black, shape: BoxShape.circle), child: Center(child: Text("SU",style: TextStyle(color: Colors.white,fontSize: 14,),)),)),
            InkWell(onTap: () {}, child: Container(height: 41,width: 41, decoration: BoxDecoration(border: BoxBorder.all(color: Colors.black,width: 2), color: Colors.black, shape: BoxShape.circle), child: Center(child: Text("M",style: TextStyle(color: Colors.white,fontSize: 14,),)),)),
            InkWell(onTap: () {}, child: Container(height: 41,width: 41, decoration: BoxDecoration(border: BoxBorder.all(color: Colors.black,width: 2), color: Colors.black, shape: BoxShape.circle), child: Center(child: Text("T",style: TextStyle(color: Colors.white,fontSize: 14,),)),)),
            InkWell(onTap: () {}, child: Container(height: 41,width: 41, decoration: BoxDecoration(border: BoxBorder.all(color: Colors.black,width: 2), color: Colors.black, shape: BoxShape.circle), child: Center(child: Text("W",style: TextStyle(color: Colors.white,fontSize: 14,),)),)),
            InkWell(onTap: () {}, child: Container(height: 41,width: 41, decoration: BoxDecoration(border: BoxBorder.all(color: Color(0xFFA1A4B2),width: 2), color: Colors.white, shape: BoxShape.circle), child: Center(child: Text("TH",style: TextStyle(color: Color(0xFFA1A4B2),fontSize: 14,),)),)),
            InkWell(onTap: () {}, child: Container(height: 41,width: 41, decoration: BoxDecoration(border: BoxBorder.all(color: Color(0xFFA1A4B2),width: 2), color: Colors.white, shape: BoxShape.circle), child: Center(child: Text("F",style: TextStyle(color: Color(0xFFA1A4B2),fontSize: 14,),)),)),
            InkWell(onTap: () {}, child: Container(height: 41,width: 41, decoration: BoxDecoration(border: BoxBorder.all(color: Colors.black,width: 2), color: Colors.black, shape: BoxShape.circle), child: Center(child: Text("S",style: TextStyle(color: Colors.white,fontSize: 14,),)),)),
          ],),),
          SizedBox(height: 63, width: double.infinity, child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
          }, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF8E97FD)), child: Text("SAVE",style: TextStyle(fontSize: 14,color: Colors.white),))),
          Center(child: InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
          }, child: Text("NO THANKS",style: TextStyle(fontSize: 14),)))

        ],),
      ),
    );
  }
}