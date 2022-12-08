import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:tasks/modules/panelWeidget.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  @override
  Widget build(BuildContext context) {
    final panelHightOpen=MediaQuery.of(context).size.height;
    final panelHightClose=MediaQuery.of(context).size.height*0.4;
    return SlidingUpPanel(
      borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
      maxHeight:panelHightOpen ,
      minHeight: panelHightClose,
      parallaxEnabled: true,
      parallaxOffset: 5,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all( 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pinned Chats',style: TextStyle(
                  color: HexColor("#1B1A57"),
                  fontFamily: 'Plus Jakarta Display',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
                CircleAvatar(backgroundImage:AssetImage('assets/images/image1.png') ,radius: 24,)
              ],
            ),
            SizedBox(height: 25,),
            Row(

              children: [
                Expanded(

                  child: Container(
                    decoration: BoxDecoration(
                      color:  HexColor("#F7F7F7"),
                    ),


                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  children: [
                                    CircleAvatar(
                                        radius: 25.0,
                                        backgroundImage: AssetImage('assets/images/image1.png')
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                        bottom: 3.0,
                                        end: 3.0,
                                      ),
                                      child: CircleAvatar(
                                        radius: 7.0,
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                        bottom: 4.5,
                                        end: 4.5,
                                      ),
                                      child: CircleAvatar(
                                        radius: 5.0,
                                        backgroundColor: Colors.amber,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 4,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mike ',style: TextStyle(
                                      color: HexColor("#1B1A57"),
                                      fontFamily: 'Plus Jakarta Display',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                    Text('Wazowski',style: TextStyle(
                                      color: HexColor("#1B1A57"),
                                      fontFamily: 'Plus Jakarta Display',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                  ],
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_backspace)),
                                SizedBox(width: 0,),
                                Text('that\'s awesome',style: TextStyle(
                                  color: HexColor("#4F5E7B"),
                                  fontFamily: 'Plus Jakarta Display',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),)
                              ],
                            ),
                          ],),
                      ),
                    ),),
                ),
                SizedBox(width:8,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color:  HexColor("#F7F7F7"),
                    ),


                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  children: [
                                    CircleAvatar(
                                        radius: 25.0,
                                        backgroundImage: AssetImage('assets/images/image1.png')
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                        bottom: 3.0,
                                        end: 3.0,
                                      ),
                                      child: CircleAvatar(
                                        radius: 7.0,
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                        bottom: 4.5,
                                        end: 4.5,
                                      ),
                                      child: CircleAvatar(
                                        radius: 5.0,
                                        backgroundColor: Colors.amber,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 4,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Darlene ',style: TextStyle(
                                      color: HexColor("#1B1A57"),
                                      fontFamily: 'Plus Jakarta Display',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                    Text('Steward',style: TextStyle(
                                      color: HexColor("#1B1A57"),
                                      fontFamily: 'Plus Jakarta Display',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                  ],
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_backspace)),
                                SizedBox(width: 0,),
                                Text('that\'s awesome',style: TextStyle(
                                  color: HexColor("#4F5E7B"),
                                  fontFamily: 'Plus Jakarta Display',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),)
                              ],
                            ),
                          ],),
                      ),
                    ),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(

              children: [
                Expanded(

                  child: Container(
                    decoration: BoxDecoration(
                      color:  HexColor("#F7F7F7"),
                    ),


                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  children: [
                                    CircleAvatar(
                                        radius: 25.0,
                                        backgroundImage: AssetImage('assets/images/image1.png')
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                        bottom: 3.0,
                                        end: 3.0,
                                      ),
                                      child: CircleAvatar(
                                        radius: 7.0,
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                        bottom: 4.5,
                                        end: 4.5,
                                      ),
                                      child: CircleAvatar(
                                        radius: 5.0,
                                        backgroundColor: Colors.amber,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 4,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mike ',style: TextStyle(
                                      color: HexColor("#1B1A57"),
                                      fontFamily: 'Plus Jakarta Display',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                    Text('Wazowski',style: TextStyle(
                                      color: HexColor("#1B1A57"),
                                      fontFamily: 'Plus Jakarta Display',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                  ],
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_backspace)),
                                SizedBox(width: 0,),
                                Text('that\'s awesome',style: TextStyle(
                                  color: HexColor("#4F5E7B"),
                                  fontFamily: 'Plus Jakarta Display',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),)
                              ],
                            ),
                          ],),
                      ),
                    ),),
                ),
                SizedBox(width:8,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color:  HexColor("#F7F7F7"),
                    ),


                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  children: [
                                    CircleAvatar(
                                        radius: 25.0,
                                        backgroundImage: AssetImage('assets/images/image1.png')
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                        bottom: 3.0,
                                        end: 3.0,
                                      ),
                                      child: CircleAvatar(
                                        radius: 7.0,
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                        bottom: 4.5,
                                        end: 4.5,
                                      ),
                                      child: CircleAvatar(
                                        radius: 5.0,
                                        backgroundColor: Colors.amber,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 4,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Darlene ',style: TextStyle(
                                      color: HexColor("#1B1A57"),
                                      fontFamily: 'Plus Jakarta Display',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                    Text('Steward',style: TextStyle(
                                      color: HexColor("#1B1A57"),
                                      fontFamily: 'Plus Jakarta Display',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                  ],
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_backspace)),
                                SizedBox(width: 0,),
                                Text('that\'s awesome',style: TextStyle(
                                  color: HexColor("#4F5E7B"),
                                  fontFamily: 'Plus Jakarta Display',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),)
                              ],
                            ),
                          ],),
                      ),
                    ),),
                ),
              ],
            ),

          ],
        ),
      )),
      panelBuilder: (controller)=>PanelWeidget(
controller:controller ,
      ),
    );
  }
}
