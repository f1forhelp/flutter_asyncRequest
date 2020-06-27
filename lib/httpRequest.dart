import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'dart:convert' as dartConvert;

class HttpRequest extends StatefulWidget {
  @override
  _HttpRequestState createState() => _HttpRequestState();
}

class _HttpRequestState extends State<HttpRequest> {
  String data = "";

  Future<String> getWeather() async {
    Position position = await Geolocator().getCurrentPosition();

    var respone = await http.get(
        "https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=439d4b804bc8187953eb36d2a8c26a02");
    
    String str =
        dartConvert.json.decode(respone.body)["weather"][0]["description"];

    return str;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        data = "Loading";
        setState(() {});
        data = await getWeather();
        setState(() {});
      }),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
