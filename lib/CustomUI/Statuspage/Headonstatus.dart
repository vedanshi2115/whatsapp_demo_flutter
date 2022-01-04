import 'package:flutter/material.dart';

class Headonstatus extends StatelessWidget {
  const Headonstatus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
              radius: 27,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
              )),
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
                backgroundColor: Colors.greenAccent[700],
                radius: 10,
                child: Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      title: Text(
        "My status",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Text(
        "tap to add status update",
        style: TextStyle(
          fontSize: 13,
          color: Colors.grey[900],
        ),
      ),
    );
  }
}
