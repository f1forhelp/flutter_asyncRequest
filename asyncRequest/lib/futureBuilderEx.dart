import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class FutureBuilderEx extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: FutureBuilder(
          future: Geolocator().getCurrentPosition(),
          builder: (context,asyncSnapshot) {
            if (asyncSnapshot.hasData) {
              return Text(asyncSnapshot.data.toString(), style: TextStyle(fontSize: 30));
            } else
              return Text(
                "Loading....",
                style: TextStyle(fontSize: 30),
              );
          },
        ),
      ),
    );
  }
}
