import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks/modules/call.dart';
import 'package:tasks/modules/private%20Chat.dart';
import 'package:tasks/modules/time.dart';
import 'package:tasks/modules/user.dart';

import '../modules/chat.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> Screens=[
    Chat(),
    call(),
    time(),
    user()
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>privateChat()));
      },
        child: Icon(
          Icons.add_comment_outlined

        ),

      ),
      body: Screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
         setState(() {
           currentIndex=index;
         });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add_comment_outlined),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.wifi_calling_sharp),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.access_time_outlined),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin),label: ""),
        ],
      ),
    );
  }
}
