import 'package:flutter/material.dart';
import 'package:whatsapp/A%20Model/Chatsmodel.dart';
import 'package:whatsapp/CustomUI/Buttoncard.dart';
import 'package:whatsapp/CustomUI/Contectcard.dart';
import 'package:whatsapp/screens/Creatgroup.dart';
class Creatgroup extends StatefulWidget {
  const Creatgroup({ Key key }) : super(key: key);

  @override
  _CreatgroupState createState() => _CreatgroupState();
}

class _CreatgroupState extends State<Creatgroup> {
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

    List<Chatsmodel> group = [];
  @override
  Widget build(BuildContext context) {
   
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
               onPressed: (){}
               ),
        ],
      ),
      body:ListView.builder(
       itemCount: contacts.length,
       itemBuilder: (context,index)
       {
        
         return InkWell(
           onTap: (){

             if(contacts[index].select==false)
             {
               setState(() {
               contacts[index].select==true;
               group.add(contacts[index]);                 
                              });
             }
             else{
               setState(() {
               contacts[index].select==false;
               group.remove(contacts[index]);                 
                              });

             }

           },
         
           child:Contectcard(
             contact: contacts[index],
           ),
         );
       }));
}
}