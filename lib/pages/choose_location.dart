import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class ChooseLocationScreen extends StatefulWidget {
  const ChooseLocationScreen({super.key});

  @override
  State<ChooseLocationScreen> createState() => _ChooseLocationScreenState();
}

class _ChooseLocationScreenState extends State<ChooseLocationScreen> {
  List<WorldTime> listWorldTime = [
    WorldTime(location: "Vietnam", flag: "vietnam", url: "Asia/Ho_Chi_Minh"),
    WorldTime(location: "New York", flag: "america", url: "America/New_York"),
    WorldTime(location: "London", flag: "united_kingdom", url: "Europe/London"),
    WorldTime(location: "Berlin", flag: "germany", url: "Europe/Berlin"),
    WorldTime(location: "Sydney", flag: "australia", url: "Australia/Sydney"),
    WorldTime(location: "Tokyo", flag: "japan", url: "Asia/Tokyo"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          title: Text(
            "Choose Location",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView(
          children: listWorldTime.map((item) {
            return Card(
              child: ListTile(
                onTap: () {},
                title: Text(item.location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/${item.flag}.png"),
                ),
              ),
            );
          }).toList(),
        ));
  }
}
