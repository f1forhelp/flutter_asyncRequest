import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class WithoutFutureBuilder extends StatefulWidget {
  @override
  _WithoutFutureBuilderState createState() => _WithoutFutureBuilderState();
}

class _WithoutFutureBuilderState extends State<WithoutFutureBuilder> {
  Future location;
  String str = "Loading...";

  @override
  void initState() {
    location = Geolocator().getCurrentPosition();

    location.then((value) {
      str = value.toString();
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          str,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
