import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    var cp = CameraPosition(
      bearing: 192,
      target: LatLng(25.315033, 83.011168),
      zoom: 10,
      tilt: 50,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Google Map"),
        ),
        body: GoogleMap(initialCameraPosition: cp),
      ),
    );
  }
}
