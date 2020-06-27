import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class StreamBuilderEx extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: StreamBuilder(
          stream: Geolocator().getPositionStream(),
          builder: (context, streamData) {
            if(streamData.hasData){
              return Text(
                streamData.data.toString(),
                style: TextStyle(fontSize: 30),
              );
            }
            else return Text(
                "Loading....",
                style: TextStyle(fontSize: 30),
              );
          },
        ),
      ),
    );
  }
}
