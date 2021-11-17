import 'package:flutter/material.dart';
import 'package:emoji_picker/emoji_picker.dart';
import 'package:whatsapp/A%20Model/Chatsmodel.dart';
class Individuelpage extends StatefulWidget {
  const Individuelpage({ Key key,this.chatsmodel }) : super(key: key);
  final Chatsmodel chatsmodel;
  @override
  _IndividuelpageState createState() => _IndividuelpageState();
}

class _IndividuelpageState extends State<Individuelpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar:PreferredSize(preferredSize:Size.fromHeight(60), 
     child: AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back,
              size: 24,
              ),
              CircleAvatar(
                child:widget.chatsmodel.isgroup? Icon(Icons.group): Icon(Icons.person),
                radius: 20,
                backgroundColor: Colors.blueGrey,
              )
            ],
          ),
        ),
        title: InkWell(
          onTap: (){},
          child: Container(
            margin: EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.chatsmodel.name,style: TextStyle(
                  fontSize: 18.5,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text("Last seen today at 12:00",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                      )
              ],
            ),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.videocam), onPressed: (){}),
          IconButton(icon: Icon(Icons.call), onPressed: (){}),
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
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width -60,
                    child: Card(
                      margin: EdgeInsets.only(left: 2,right: 2,bottom: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        minLines: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "type a message",
                          prefixIcon: IconButton(
                            icon: Icon(
                              Icons.emoji_emotions
                              ),
                              onPressed: (){},
                              ),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.attach_file),
                                  onPressed: () {
                                    showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                       builder: (builder)=>bottomsheet (

                                    ));
                                  },
                                  ),
                                  IconButton(
                                   icon: Icon(Icons.camera_alt),
                                   onPressed: (){},
                                  )
                                ],
                              ),
                          contentPadding: EdgeInsets.all(5),
                          
                        ),
                      )
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                      right: 5,
                      left: 2,
                      ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0XFF128C7E),
                      child: IconButton(
                        icon: Icon(
                          Icons.mic,
                          color: Colors.white,
                          ),
                        onPressed: (){},
                      ),
                      
                    ),
                  ),
                ],
              ),
            ),
          ],
          ),
      ),
    );
  }
  Widget bottomsheet()
  {
    return Container(
      height: 278,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: EdgeInsets.all(18),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                iconcreation(Icons.insert_drive_file,Colors.indigo,"Document"),
                SizedBox(
                  width: 40,
                ),
                iconcreation(Icons.camera_alt,Colors.pink,"camera"),
                SizedBox(
                  width: 40,
                ),
                iconcreation(Icons.insert_photo,Colors.purple,"gallary "),
              ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                iconcreation(Icons.headset,Colors.orange,"Audio"),
                SizedBox(
                  width: 40,
                ),
                iconcreation(Icons.location_pin,Colors.teal,"Location"),
                SizedBox(
                  width: 40,
                ),
                iconcreation(Icons.person,Colors.blue,"Contect"),
              ],
              )
            ],),
        ),

      ),
    );
  }
  Widget iconcreation(IconData icon,Color color,String text)
  {
    return InkWell(
      onTap: (){},
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(
              icon,
              size: 29,
              color: Colors.white,
              ),
          ),
          SizedBox(
            height: 5,

          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12
            ),
          ),
         
          
        ],
      ),
    );
  }
 /* Widget emojiSelect()
  {
    return 

  }*/
}