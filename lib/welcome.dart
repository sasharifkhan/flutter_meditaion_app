import 'package:flutter/material.dart';
import 'package:flutter_application_1/silent_moon.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/welcome_screen_bg.png"),fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            SizedBox(height: 30,width: 168, child: Image(image: AssetImage("assets/images/silent_moon_image_2.png"))),
            Column(children: [
              Text("Hi Afsar, Welcome",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w700),),
              Text("to Silent Moon",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.normal)),
              SizedBox(height: 15,),
              Text("Explore the app, Find some peace of mind to prepare for meditation.",style: TextStyle(fontSize: 16,color: Colors.white),textAlign: TextAlign.center,),
            ],),
            SizedBox(height: 247,),
            SizedBox(
                    width: double.infinity,
                    height: 63,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SilentMoon(),));
                    }, style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,elevation: 0,
                    ),child: Text("GET STARTED",style: TextStyle(color: Colors.black,fontSize: 14),)),
            ),
          ],),),
        ),
      ),
    );
  }
}