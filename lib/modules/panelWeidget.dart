import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PanelWeidget extends StatefulWidget {
  final ScrollController controller;

  const PanelWeidget({Key? key, required this.controller,}) : super(key: key);

  @override
  State<PanelWeidget> createState() => _PanelWeidgetState();
}

class _PanelWeidgetState extends State<PanelWeidget>with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController=TabController(length: 4,vsync: this);
    return ListView(
      controller: widget.controller,
      children: [
        BuildGradleHandle(),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Recent Chats',style: TextStyle(
                color: HexColor("#1B1A57"),
                fontFamily: 'Plus Jakarta Display',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
              Icon(Icons.search,color: HexColor("#4F5E7B"),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 35,
            color: Colors.grey.shade50,
            child: TabBar(


              controller: _tabController,

              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,

              indicatorColor: Colors.blue,
              indicator: BoxDecoration(

                borderRadius: BorderRadius.circular(5),
                color: Colors.blue
              ),
              tabs: [
               Tab(text: 'All Chats',),
                Tab(text: 'Personal',),
                Tab(text: 'Work',),
                Tab(text: 'Groups',),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.maxFinite,
            height: 300,
            child: TabBarView(
              controller: _tabController,
              children: [
            ListView.builder(itemCount: 4,itemBuilder: (_,index){
              return buildChatItem();
            }),
                ListView.builder(itemCount: 1,itemBuilder: (_,index){
                  return buildChatItem();
                }),
                ListView.builder(itemBuilder: (_,index){
                  return buildChatItem();
                }),
                ListView.builder(itemBuilder: (_,index){
                  return buildChatItem();
                })
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget BuildGradleHandle()=>Center(
    child: Container(
      height: 5,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12)
      ),
    ),
  );
  Widget buildChatItem() =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
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
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' Ahmed ',
                        style:TextStyle(
                          color: HexColor("#1B1A57"),
                          fontFamily: 'Plus Jakarta Display',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '02:00',
                        style: TextStyle(
                          color: HexColor("#4F5E7B"),
                          fontFamily: 'Plus Jakarta Display',

                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children:
                    [
                      Expanded(
                        child: Text(
                          'hello my name is ',
                          maxLines: 1,
                          style: TextStyle(
                            color: HexColor("#4F5E7B"),
                            fontFamily: 'Plus Jakarta Display',

                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: Text("5",style: TextStyle(color: Colors.white))))


                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );


}
