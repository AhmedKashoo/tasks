import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../d.dart';

class privateChat extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor("#FFFFFF"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.video_call_rounded,color:  HexColor("#4F5E7B"),),
                SizedBox(width: 3,),
                Icon(Icons.info,color: HexColor("#4F5E7B"),),
              ],
            ),
          ),
        ],
        leadingWidth: 80,
        title: Column(
          children: [
            Text('FullsnackDesigners',style: TextStyle(
              color: HexColor("#1B1A57"),
              fontFamily: 'Plus Jakarta Display',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
            Text('7Online,from 12 people',style: TextStyle(
              color: HexColor("#4F5E7B"),
              fontFamily: 'Plus Jakarta Display',
              fontSize: 12,

            ),),

          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Icon(Icons.arrow_back,color:  HexColor("#4F5E7B"),),
              SizedBox(width: 5,),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/image1.png',),
              ),

            ],
          ),
        )
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.tag_faces, color: Colors.grey, size: 30, ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.settings_voice_rounded,color: Colors.white,size: 18,),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],

              ),
            ),
          ),
         Column(
           children: [
             Row(children: [
               Padding(
                 padding: EdgeInsets.only(left: 55,top: 10,bottom: 10),

               ),
               Container(
                 padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                 child: Align(
                   alignment: Alignment.topLeft,
                   child: Container(
                     width: 200,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.grey.shade200),

                     padding: EdgeInsets.all(16),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(


                           children: [
                           Text("Mike Mazowsky",style: TextStyle(
                             color: HexColor("#F2994A"),
                             fontFamily: 'Plus Jakarta Display',
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                           ),),
Spacer(),
                           Text("admin",style: TextStyle(
                             color: HexColor("#A1A1BC"),
                             fontFamily: 'Plus Jakarta Display',
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                           ),)
                         ],),
                         Text("Hello Hello HelloHello Hello Hello")
                       ],
                     )

                   ),
                 ),
               ),
             ],),
             Row(children: [
               Padding(
                 padding: EdgeInsets.only(left: 14,top: 10,bottom: 10),
                 child: Align(
                   alignment: Alignment.topLeft,
                   child: CircleAvatar(
                     radius: 24.0,
                     backgroundImage:  AssetImage('assets/images/image1.png',),
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                 child: Align(
                   alignment: Alignment.topLeft,
                   child: Container(
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.grey.shade200),

                     padding: EdgeInsets.all(16),
                     child:Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Image(image: AssetImage('assets/images/img3.png')),
                         SizedBox(height: 5,),

                         Row(children: [
                           Image(image: AssetImage('assets/images/img3.png'),width: 100,),
                           SizedBox(width: 5,),
                           Image(image: AssetImage('assets/images/img3.png'),width: 100,),

                         ],)
                       ],
                     ),

                   ),
                 ),
               ),
             ],),
             Row(children: [
               Padding(
                 padding: EdgeInsets.only(left: 80,top: 10,bottom: 10),

               ),
               Container(
                 padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                 child: Align(
                   alignment: Alignment.topRight,
                   child: Container(
                       width: 200,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: HexColor("#2F80ED")),

                       padding: EdgeInsets.all(16),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.end,
                         crossAxisAlignment: CrossAxisAlignment.end,
                         children: [

                           Text("Hello Hello HelloHello Hello Hello",style: TextStyle(color: Colors.white),),
                           Text('2.00',style: TextStyle(color: Colors.white),)
                         ],
                       )

                   ),
                 ),
               ),
               CircleAvatar(
                 backgroundImage: AssetImage('assets/images/image1.png',),
               ),
             ],),
           ],
         ),



        ],
      ),
    );
  }

}

