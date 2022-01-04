import 'package:flutter/material.dart';

class Callscreen extends StatefulWidget {
  const Callscreen({Key key}) : super(key: key);

  @override
  _CallscreenState createState() => _CallscreenState();
}

class _CallscreenState extends State<Callscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Callcard("vedanshi", Icons.call_made, Colors.green, "july 18, 01:03"),
          Callcard("vedanshi", Icons.call_missed, Colors.red, "july 18, 01:03"),
          Callcard("vedanshi", Icons.call_missed, Colors.red, "july 18, 01:03"),
          Callcard("vedanshi", Icons.call_missed, Colors.red, "july 18, 01:03"),
          Callcard("vedanshi", Icons.call_missed, Colors.red, "july 18, 01:03"),
          Callcard("vedanshi", Icons.call_missed, Colors.red, "july 18, 01:03"),
          Callcard("vedanshi", Icons.call_missed, Colors.red, "july 18, 01:03"),
        ],
      ),
    );
  }

  Widget Callcard(
      String name, IconData iconData, Color iconColor, String time) {
    return Card(
      margin: EdgeInsets.only(
        bottom: 0.5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.person),
          radius: 26,
        ),
        title: Text(
          "Test name",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Row(
          children: [
            Icon(
              iconData,
              color: iconColor,
              size: 20,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: 12.5,
              ),
            ),
          ],
        ),
        trailing: Icon(
          Icons.call,
          size: 28,
          color: Colors.teal,
        ),
      ),
    );
  }
}
