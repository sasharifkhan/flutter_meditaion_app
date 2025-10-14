import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign_in.dart';
import 'package:flutter_application_1/sign_up.dart';

class SignUpAndSignInScreen extends StatefulWidget {
  const SignUpAndSignInScreen({super.key});

  @override
  State<SignUpAndSignInScreen> createState() => _SignUpAndSignInScreenState();
}

class _SignUpAndSignInScreenState extends State<SignUpAndSignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/sign_in_sign_up_bg.png"),fit: BoxFit.cover)
        ),
        child: 
        Container(
          margin: EdgeInsets.only(top: 30),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 30,
                    width: 168,
                    child: Image(image: AssetImage("assets/images/silent_moon_image.png"))),
                  SizedBox(
                    height: 242,
                    width: 332,
                    child: Image(image: AssetImage("assets/images/signUp_sc_image.png"))),
                  Column(
                    children: [
                      Text("We are what we do",style: TextStyle(fontSize: 30),),
                      SizedBox(height: 15),
                      Text("Thousand of people are usign silent moon for smalls meditation",style: TextStyle(fontSize: 16),),
                    ],),
                  Column(children: [
                    SizedBox(
                      width: double.infinity,
                      height: 63,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                      }, style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF8E97FD),elevation: 0,
                      ),child: Text("SIGN UP",style: TextStyle(color: Colors.white,fontSize: 14),)),
                    ),
                    SizedBox(height: 20,),
                    RichText(text: TextSpan(text: "ALREADY HAVE AN ACCOUNT? ", children: [
                      TextSpan(text: "LOG IN", style:TextStyle(color: Color(0xFF8E97FD))  ,recognizer: TapGestureRecognizer()..onTap=(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
                      })
                    ]))
                  ])
                ]),
            ),
          ),
        ),
      ),
    );
  }
}