import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String? currentTime;

  void getTime() async {
    WorldTime worldTime = WorldTime(
        location: "Vietnam", flag: "Vietnam", url: "Asia/Ho_Chi_Minh");
    await worldTime.getTime();

    setState(() {
      currentTime = worldTime.time;
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
                        "Current time is $currentTime",
                        style: TextStyle(
                            fontSize: 30, wordSpacing: 2, overflow: TextOverflow.clip),
                      ),
              ))),
    );
  }
}
