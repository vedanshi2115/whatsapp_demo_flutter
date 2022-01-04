import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/screens/Camerascreen.dart';
import 'package:whatsapp/screens/Homepage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0XFF075E54), accentColor: Color(0XFF128C7E)),
      home: Homepage(),
    );
  }
}
