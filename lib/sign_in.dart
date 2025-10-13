import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/sign_up_and_sign_in_screen.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpAndSignInScreen(),));
        }, icon: Image(image: AssetImage("assets/images/back_button.png"))),

      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/sign_in_and_sign_up_bg.png"),fit: BoxFit.cover),),
          child: Container(
            margin: EdgeInsets.only(top: 70),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Text("Welcome Back!",style: TextStyle(fontSize: 28),),
                  Column(children: [
                    SizedBox(
                      height: 63,
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF7583CA),
                      ), child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 24,width: 24, child: Image(image: AssetImage('assets/images/facebook.png'))),
                          SizedBox(width: 30,),
                          Text("CONTINUE WITH FACEBOOK",style: TextStyle(fontSize: 14,color: Colors.white),),
                          // SizedBox(width: 35,),
                        ],
                      )),
                    ),
                    SizedBox(height: 19,),
                    SizedBox(
                      height: 63,
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ), child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 24,width: 24, child: Image(image: AssetImage('assets/images/google.png'))),
                          SizedBox(width: 30,),
                          Text("CONTINUE WITH GOOGLE",style: TextStyle(fontSize: 14,color: Colors.black),),
                          // SizedBox(width: 40,),
                        ],
                      )),
                    )
                  ],),
                  Text("OR LOG IN WITH EMAIL", style: TextStyle(fontSize: 14),),
                  Column(children: [
                  TextField(decoration: 
                  InputDecoration(
                    enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.transparent)),
                    fillColor: Color(0xFFF2F3F7),
                    focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide:BorderSide(color: Colors.transparent)),
                    hintText: "Email address",
                    contentPadding: EdgeInsets.only(left: 15),
                    filled: true,
                  ),),
                  SizedBox(height: 20,),
                  TextField(decoration: 
                  InputDecoration(
                    enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.transparent)),
                    fillColor: Color(0xFFF2F3F7),
                    focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide:BorderSide(color: Colors.transparent)),
                    hintText: "Password",
                    contentPadding: EdgeInsets.only(left: 15),
                    filled: true,
                  ),),
                  SizedBox(height: 30),
                  SizedBox(
                      width: double.infinity,
                      height: 63,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
                      }, style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF8E97FD),elevation: 0,
                      ),child: Text("LOG IN",style: TextStyle(color: Colors.white,fontSize: 14),)),
                    ),
                  SizedBox(height: 20),
                  TextButton(onPressed: () {},child: Text("Forgot Password?"),),

                  ],),
                  Text("ALREADY HAVE AN ACCOUNT? SIGN UP")

                ],),
                  
              ),
            ),
          ),
      ),
    );
  }
}