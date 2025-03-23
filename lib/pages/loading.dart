import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
      backgroundColor: Colors.green[500],
      body: Center(
          child: SpinKitFoldingCube(
        color: Colors.white,
        size: 50.0,
      )),
    );
  }
}
