import 'package:flutter/material.dart';

List<Map<String, dynamic>> weekData = [
  {"day": "Wed", "min": 18, "max": 25, "icon": Icons.cloud},
  {"day": "Thu", "min": 19, "max": 26, "icon": Icons.wb_sunny},
  {"day": "Fri", "min": 20, "max": 27, "icon": Icons.beach_access},
  {"day": "Sat", "min": 21, "max": 28, "icon": Icons.wb_sunny},
  {"day": "Sun", "min": 22, "max": 29, "icon": Icons.wb_sunny},
  {"day": "Mon", "min": 23, "max": 30, "icon": Icons.wb_sunny},
  {"day": "Tue", "min": 24, "max": 31, "icon": Icons.wb_sunny},
];

class MyWeatherApp extends StatelessWidget {
  const MyWeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE0F2F5),
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "May 11",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "La Ceiba",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        bottom: const TabBar(
          tabs: [
            Tab(text: 'Today'),
            Tab(text: 'This Week'),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TabBarView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "21°C",
                        style: TextStyle(
                          fontSize: 48.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Icon(
                        Icons.cloud,
                        size: 48.0,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    "Max: 25°C",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "Min: 18°C",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "Pressure: 1013 hPa",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "Humidity: 82%",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Row(
                    children: [
                      Text(
                        "8 PM",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[600],
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.cloud,
                        color: Colors.blue,
                      ),
                      Text(
                        "21°C",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      Text(
                        "11 PM",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[600],
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.cloud,
                        color: Colors.blue,
                      ),
                      Text(
                        "22°C",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ListView.builder(
                itemCount: weekData.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Text(
                        weekData[index]["day"],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[600],
                        ),
                      ),
                      const Spacer(),
                      Icon(weekData[index]["icon"]),
                      Text(
                        "Min: ${weekData[index]["min"]}°C",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[600],
                        ),
                      ),
                      Text(
                        "Max: ${weekData[index]["max"]}°C",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
