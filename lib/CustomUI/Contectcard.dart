import 'package:flutter/material.dart';
import 'package:whatsapp/A%20Model/Chatsmodel.dart';
class Contectcard extends StatelessWidget {
  const Contectcard({ Key key,this.contact }) : super(key: key);
  final Chatsmodel contact;

@override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 53,
        width: 50,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 23,
              child:Icon(
                Icons.person,
                color: Colors.white,
              ),
              backgroundColor: Colors.blueGrey[200],
              ),
              
              
             contact.select? Positioned(
                bottom: 4,
                right: 5,
                child: CircleAvatar(
                  backgroundColor: Colors.teal,
                  radius: 11,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 18,
                    ),
                ),
              ):Container()
              
          ],
        ),
      ),
        title: Text(
          contact.name,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,

          ),
        ),
        subtitle: Text(
          contact.status,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
    );
  }
  
}