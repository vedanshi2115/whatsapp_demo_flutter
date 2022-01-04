import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:whatsapp/A%20Model/Chatsmodel.dart';
import 'package:whatsapp/CustomUI/Avtarcard.dart';
import 'package:whatsapp/CustomUI/Buttoncard.dart';
import 'package:whatsapp/CustomUI/Contectcard.dart';
import 'package:whatsapp/screens/Creatgroup.dart';

class Creatgroup extends StatefulWidget {
  const Creatgroup({Key key}) : super(key: key);

  @override
  _CreatgroupState createState() => _CreatgroupState();
}

class _CreatgroupState extends State<Creatgroup> {
  List<Chatsmodel> contacts = [
    Chatsmodel(
      name: "vedanshi",
      status: "hello",
    ),
    Chatsmodel(
      name: "yashvi",
      status: "hello",
    ),
    Chatsmodel(
      name: "ami",
      status: "hello",
    ),
    Chatsmodel(
      name: "aditi",
      status: "hello",
    ),
    Chatsmodel(
      name: "misti",
      status: "hello",
    ),
  ];

  List<Chatsmodel> groupmember = [];
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
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
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
                icon: Icon(
                  Icons.search,
                  size: 26,
                ),
                onPressed: () {}),
          ],
        ),
        body: Stack(
          children: [
            ListView.builder(
                itemCount: contacts.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Container(
                      height: groupmember.length > 0 ? 90 : 10,
                    );
                  }
                  return InkWell(
                    onTap: () {
                      if (contacts[index - 1].select == false) {
                        contacts[index - 1].select = true;
                        groupmember.add(contacts[index - 1]);
                        // contacts[index].select = !contacts[index].select;
                      } else {
                        setState(() {
                          contacts[index - 1].select = false;
                          groupmember.remove(contacts[index - 1]);
                        });
                      }
                      setState(() {});
                      print(contacts[index - 1].select);
                    },
                    child: Contectcard(
                      contact: contacts[index - 1],
                    ),
                  );
                }),
            groupmember.length > 0
                ? Column(
                    children: [
                      Container(
                        height: 75,
                        color: Colors.white,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: contacts.length,
                            itemBuilder: (context, index) {
                              if (contacts[index].select == true) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      groupmember.remove(contacts[index]);
                                      contacts[index].select = false;
                                    });
                                  },
                                  child: Avtarcard(
                                    contact: contacts[index],
                                  ),
                                );
                              } else {
                                return Container();
                              }
                            }),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  )
                : Container(),
          ],
        ));
  }
}
