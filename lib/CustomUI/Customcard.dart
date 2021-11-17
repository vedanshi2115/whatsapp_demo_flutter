import 'package:flutter/material.dart';
import 'package:whatsapp/A%20Model/Chatsmodel.dart';
import 'package:whatsapp/Pages/Individuelpage.dart';


class Customcard extends StatelessWidget {
  const Customcard({ Key key,this.chatsmodel }) : super(key: key);
  final Chatsmodel chatsmodel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder : (context)=>Individuelpage(
          chatsmodel: chatsmodel,
        )));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
               radius: 30, 
              child:chatsmodel.isgroup? Icon(Icons.group): Icon(Icons.person)
              ),
            title: Text(
              chatsmodel.name,
            style:TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
               ),
                         ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(
                  chatsmodel.currentMessage,
                      style:TextStyle(fontSize: 13,
                      
                      ),
                       ),
              ],
            ),
            trailing: Text(chatsmodel.time),
    
          ),
          
           
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
        
        ],
      ),
    );

  }
}