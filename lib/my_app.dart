import 'package:flutter/material.dart';
import 'my_weather_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: MyWeatherApp(),
      ),
    );
  }
}