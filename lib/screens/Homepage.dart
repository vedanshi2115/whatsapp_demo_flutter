import 'package:flutter/material.dart';
import 'package:whatsapp/Pages/Chatspage.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin {

   TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4,vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
         PopupMenuButton<String>
         
         (itemBuilder:(BuildContext contesxt){
           return[
             PopupMenuItem(child: Text("New group"),value:"new group",),
             PopupMenuItem(child: Text("New brodcast"), value: "new brodcast",),
             PopupMenuItem(child: Text("Whats web"),value: "Whast web",),
             PopupMenuItem(child: Text("Starred message"),value: "Starred message",),
             PopupMenuItem(child: Text("setting"),value: "Setting",),
           ];
         })
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
            
          ],
        ),
      ),
      body: 
         TabBarView(
           controller: _controller,
           children: [
             Text("camera"),
             Chatspage(),
             Text("status"),
             Text("Calss"),
           ],
         ),
    );
  }
}