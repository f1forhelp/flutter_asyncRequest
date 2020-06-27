import 'package:asyncRequest/futureBuilderEx.dart';
import 'package:asyncRequest/httpRequest.dart';
import 'package:asyncRequest/streamBuilderEx.dart';
import 'package:asyncRequest/withoutFutureBuilder.dart';
import 'package:asyncRequest/withoutStreamBuilder.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton("Future Builder", FutureBuilderEx()),
          TextButton("Stream Builder", StreamBuilderEx()),
          TextButton("Without future Builder", WithoutFutureBuilder()),
          TextButton("Without Stream Builder", WithoutStreamBuilder()),
          TextButton("HttpRequest", HttpRequest()),
        ],
      ),
    );
  }
}



class TextButton extends StatelessWidget {
  final String str;
  final Widget widget;
  const TextButton(this.str, this.widget);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.teal,
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Text(
          str,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
