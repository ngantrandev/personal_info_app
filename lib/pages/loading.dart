import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  DateTime? currentTime;

  void getTime() async {
    Response res = await get(
        Uri.parse(
            "https://api.api-ninjas.com/v1/worldtime?timezone=Asia/Jakarta"),
        headers: {
          "x-api-key": "U7DvX2AqRuBaTNT3c4L9sw==ErophonyTXIECIDY",
        });

    Map data = jsonDecode(res.body);

    setState(() {
      currentTime = DateTime.parse(data["datetime"]);
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
      body:
          SafeArea(child: Center(child: Text("Current time is $currentTime"))),
    );
  }
}
