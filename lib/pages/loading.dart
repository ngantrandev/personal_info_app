import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:world_time_app/services/world_time.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getTime() async {
    WorldTime worldTime = WorldTime(
        location: "Vietnam", flag: "Vietnam", url: "Asia/Ho_Chi_Minh");
    await worldTime.getTime();

    Navigator.pushReplacementNamed(context, "/home", arguments: {
      "location": worldTime.location,
      "flag": worldTime.flag,
      "time": DateFormat.jm().format(DateTime.parse(worldTime.time!))
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          "Loading time. . .",
          style: TextStyle(
              fontSize: 30, wordSpacing: 2, overflow: TextOverflow.clip),
        ),
      ))),
    );
  }
}
