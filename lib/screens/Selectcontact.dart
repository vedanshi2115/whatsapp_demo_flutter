import 'package:flutter/material.dart';
import 'package:whatsapp/A%20Model/Chatsmodel.dart';
import 'package:whatsapp/CustomUI/Buttoncard.dart';
import 'package:whatsapp/CustomUI/Contectcard.dart';
import 'package:whatsapp/screens/Creatgroup.dart';
class Selectcontact extends StatefulWidget {
  const Selectcontact({ Key key }) : super(key: key);

  @override
  _SelectcontactState createState() => _SelectcontactState();
}

class _SelectcontactState extends State<Selectcontact> {
  @override
  Widget build(BuildContext context) {

    List<Chatsmodel> contacts = [
      Chatsmodel(
        name: "vedanshi",
        status : "hello"
      ),
      Chatsmodel(
        name: "yashvi",
        status : "hello"
      ),
      Chatsmodel(
        name: "ami",
        status : "hello"
      ),
      Chatsmodel(
        name: "aditi",
        status : "hello"
      ),
      Chatsmodel(
        name: "misti",
        status : "hello"
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "select contect",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "256 contact",
              style: TextStyle(
                fontSize: 13,
              ),
              
          
            )
          ],
        ),
        actions: [
          IconButton(
            icon:Icon(
              Icons.search,
              size: 26,
              ),
               onPressed: (){}),
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

      ),
     body: ListView.builder(
       itemCount: contacts.length+2,
       itemBuilder: (context,index)
       {
         if(index==0)
         {
           return InkWell(
             onTap: (){
               Navigator.push(context,
                MaterialPageRoute(builder: (builder)=> Creatgroup()));
             },
           
             child: Buttoncard(
               icon:Icons.group,
               name: "new group",
               )
               );
         }
         else if(index==1)
         {
           return Buttoncard(icon: Icons.person,name: "New contact",);
         }
         return Contectcard(
           contact: contacts[index-2],
         );
       }
       )
    );
  }
}