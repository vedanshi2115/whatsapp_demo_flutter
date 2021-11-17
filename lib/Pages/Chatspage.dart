import 'package:flutter/material.dart';
import 'package:whatsapp/A%20Model/Chatsmodel.dart';
import 'package:whatsapp/CustomUI/Customcard.dart';
import 'package:whatsapp/screens/Selectcontact.dart';

class Chatspage extends StatefulWidget {
  const Chatspage({ Key key }) : super(key: key);

  @override
  _ChatspageState createState() => _ChatspageState();
}

class _ChatspageState extends State<Chatspage> {

  List<Chatsmodel> chats = [
    Chatsmodel(
      name: "vedanshi",
      isgroup: false,
      currentMessage: "hi",
      time: "4:00",
      icon: "group.png",
       ),
       Chatsmodel(
      name: "vedanshi",
      isgroup: true,
      currentMessage: "hi",
      time: "4:00",
      icon: "group.png",
       ),
       Chatsmodel(
      name: "vedanshi",
      isgroup: false,
      currentMessage: "hi",
      time: "4:00",
      icon: "group.png",
       ),
       Chatsmodel(
      name: "vedanshi",
      isgroup: false,
      currentMessage: "hi",
      time: "4:00",
      icon: "group.png",
       ),Chatsmodel(
      name: "vedanshi",
      isgroup: false,
      currentMessage: "hi",
      time: "4:00",
      icon: "group.png",
       ),Chatsmodel(
      name: "vedanshi",
      isgroup: false,
      currentMessage: "hi",
      time: "4:00",
      icon: "group.png",
       ),Chatsmodel(
      name: "vedanshi",
      isgroup: false,
      currentMessage: "hi",
      time: "4:00",
      icon: "group.png",
       ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, 
          MaterialPageRoute(builder: (builder)=>Selectcontact()));
        },
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context,index)=> Customcard
        (
          chatsmodel:chats[index],
          ),

      ),
    
      
    );
  }
}