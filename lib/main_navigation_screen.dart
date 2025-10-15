import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/meditate_v2.dart';
import 'package:flutter_application_1/music.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/sleep.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {

  int selectedIndex = 0;

  void onTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(index: selectedIndex, children: [
        Homepage(),
        Sleep(),
        MeditateV2(),
        Music(),
        Profile()
      ],),
      bottomNavigationBar:  Container(padding: EdgeInsets.all(0),height: 115, child: BottomNavigationBar( backgroundColor: Colors.white, type: BottomNavigationBarType.fixed, items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Container(height: 46, width: 46, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white,),child: Center(child: Image(image: AssetImage("assets/images/home_icon_b.png"),height: 22,width: 22,color: Color(0xFFA0A3B1),)),),  label: "Home", activeIcon: Container(height: 46, width: 46, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color(0xFF8E97FD),),child: Center(child: Image(image: AssetImage("assets/images/home_icon_b.png"),height: 22,width: 22,color: Colors.white,)),)),
        BottomNavigationBarItem(icon: Container(height: 46, width: 46, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white,),child: Center(child: Image(image: AssetImage("assets/images/sleep_icon_b.png"),height: 22,width: 22,color: Color(0xFFA0A3B1),)),),  label: "Sleep", activeIcon: Container(height: 46, width: 46, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color(0xFF8E97FD),),child: Center(child: Image(image: AssetImage("assets/images/sleep_icon_b.png"),height: 22,width: 22,color: Colors.white,)),)),
        BottomNavigationBarItem(icon: Container(height: 46, width: 46, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white,),child: Center(child: Image(image: AssetImage("assets/images/meditate_icon_b.png"),height: 22,width: 22,color: Color(0xFFA0A3B1),)),),  label: "Meditate", activeIcon: Container(height: 46, width: 46, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color(0xFF8E97FD),),child: Center(child: Image(image: AssetImage("assets/images/meditate_icon_b.png"),height: 22,width: 22,color: Colors.white,)),)),
        BottomNavigationBarItem(icon: Container(height: 46, width: 46, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white,),child: Center(child: Image(image: AssetImage("assets/images/music_icon_b.png"),height: 22,width: 22,color: Color(0xFFA0A3B1),)),),  label: "Music", activeIcon: Container(height: 46, width: 46, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color(0xFF8E97FD),),child: Center(child: Image(image: AssetImage("assets/images/music_icon_b.png"),height: 22,width: 22,color: Colors.white,)),)),
        BottomNavigationBarItem(icon: Container(height: 46, width: 46, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white,),child: Center(child: Image(image: AssetImage("assets/images/profile_icon_b.png"),height: 22,width: 22,color: Color(0xFFA0A3B1),)),),  label: "Profile", activeIcon: Container(height: 46, width: 46, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color(0xFF8E97FD),),child: Center(child: Image(image: AssetImage("assets/images/profile_icon_b.png"),height: 22,width: 22,color: Colors.white,)),)),
      ], selectedItemColor: Color(0xFF8E97FD), onTap: onTapped, currentIndex: selectedIndex, ),)
    );
  }
}