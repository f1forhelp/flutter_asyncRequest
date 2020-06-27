import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class WithoutStreamBuilder extends StatefulWidget {
  @override
  _WithoutStreamBuilderState createState() => _WithoutStreamBuilderState();
}

class _WithoutStreamBuilderState extends State<WithoutStreamBuilder> {
  Stream location;
  String position="Loading...";

  @override
  void initState() {
    location = Geolocator().getPositionStream();
    location.listen((event) {
      setState(() {});
      position = event.toString();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child:Text(
          position,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
