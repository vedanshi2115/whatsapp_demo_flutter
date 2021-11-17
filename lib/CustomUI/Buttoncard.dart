import 'package:flutter/material.dart';
import 'package:whatsapp/A%20Model/Chatsmodel.dart';
class Buttoncard extends StatelessWidget {
  const Buttoncard({ Key key,this.name,this.icon }) : super(key: key);
  final String name;
  final IconData icon;

@override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23,
        child:Icon(
          icon,
        size: 26,
        color: Colors.white,),
        backgroundColor: Color(0XFF25D366),


        
      ),
      title: Text(
      name,

      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      ),
     
    );

  }
}