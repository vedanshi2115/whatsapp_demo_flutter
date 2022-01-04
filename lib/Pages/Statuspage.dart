import 'package:flutter/material.dart';
import 'package:whatsapp/CustomUI/Statuspage/Headonstatus.dart';
import 'package:whatsapp/CustomUI/Statuspage/Otherstatus.dart';

class Statuspage extends StatefulWidget {
  const Statuspage({Key key}) : super(key: key);

  @override
  _StatuspageState createState() => _StatuspageState();
}

class _StatuspageState extends State<Statuspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey[100],
              elevation: 8,
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Colors.lightBlue[900],
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.greenAccent[700],
            elevation: 5,
            child: Icon(Icons.camera_alt),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(
            // height: 10,    //margin up
            //),
            Headonstatus(),
            label("Recent update"),

            Otherstatus(
              name: "vedanshi",
              time: "01:02",
              isSeen: false,
              statusNum: 2,
            ),
            Otherstatus(
              name: "vedanshi",
              time: "01:02",
              isSeen: false,
              statusNum: 9,
            ),
            Otherstatus(
              name: "vedanshi",
              time: "01:02",
              isSeen: false,
              statusNum: 1,
            ),
            Otherstatus(
              name: "vedanshi",
              time: "01:02",
              isSeen: false,
              statusNum: 5,
            ),
            Otherstatus(
              name: "vedanshi",
              time: "01:02",
              isSeen: false,
              statusNum: 1,
            ),
            Otherstatus(
              name: "vedanshi",
              time: "01:02",
              isSeen: false,
              statusNum: 2,
            ),
            Otherstatus(
              name: "vedanshi",
              time: "01:02",
              isSeen: false,
              statusNum: 2,
            ),
            Otherstatus(
              name: "vedanshi",
              time: "01:02",
              isSeen: false,
              statusNum: 2,
            ),

            SizedBox(
              height: 10,
            ),
            label("view update"),
            Otherstatus(
              name: "vedanshi",
              time: "01:02",
              isSeen: true,
              statusNum: 2,
            ),
            Otherstatus(
              name: "vedanshi",
              time: "01:02",
              isSeen: true,
              statusNum: 2,
            ),
            Otherstatus(
              name: "vedanshi",
              time: "01:02",
              isSeen: true,
              statusNum: 2,
            ),
            Otherstatus(
              name: "vedanshi",
              time: "01:02",
              isSeen: true,
              statusNum: 2,
            ),
            Otherstatus(
              name: "vedanshi",
              time: "01:02",
              isSeen: true,
              statusNum: 2,
            ),
            Otherstatus(
              name: "vedanshi",
              time: "01:02",
              isSeen: true,
              statusNum: 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget label(String labelname) {
    return Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        child: Text(
          labelname,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
