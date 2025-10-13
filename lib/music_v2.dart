import 'package:flutter/material.dart';

class MusicV2 extends StatefulWidget {
  const MusicV2({super.key});

  @override
  State<MusicV2> createState() => _MusicV2State();
}

class _MusicV2State extends State<MusicV2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(height: double.infinity, width: double.infinity, decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/music_v2_image.png"),fit: BoxFit.cover)
      ), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Focus",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600),),
        Text("Attention",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600),),
        CircleAvatar(maxRadius: 50, backgroundColor: Color(0xFFBABCC6), child: IconButton(onPressed: (){}, icon: Icon(Icons.pause_circle,size: 75,color: Colors.black,)),)
      ],),),
    );
  }
}