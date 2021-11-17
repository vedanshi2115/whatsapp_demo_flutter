import 'package:flutter/material.dart';
import 'package:whatsapp/screens/Homepage.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0XFF075E54), 
        accentColor: Color(0XFF128C7E)
         ),
      home: Homepage(),
    );
    
  }
}

// new