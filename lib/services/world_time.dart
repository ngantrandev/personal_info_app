import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart';

class WorldTime {
  String location;
  String? time;
  String flag;
  String url;
  bool isDayTime = false;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      var res = await Dio()
          .get("https://api.api-ninjas.com/v1/worldtime?timezone=$url",
              options: Options(headers: {
                "x-api-key": "U7DvX2AqRuBaTNT3c4L9sw==ErophonyTXIECIDY",
              }));

      print('res: $res');

      Map<String, dynamic> data = res.data;

      print("data: $data");

      int hour = int.parse(data["hour"]);
      isDayTime = hour > 6 && hour < 20 ? true : false;

      time = DateTime.parse(data["datetime"]).toString();
    } catch (e) {
      print("got error: $e");

      time = "Could not get time data";
      isDayTime = false;
    }
  }

  // write a function to get time from time variable

  String getTimeFromTime() {
    return time!;
  }
}
