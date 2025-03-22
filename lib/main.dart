import 'package:flutter/material.dart';
import 'package:personal_info_app/history_detail.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: InfoCard(),
  ));
}

class InfoCard extends StatefulWidget {
  const InfoCard({super.key});

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  int yourAge = 0;

  List<HistoryDetail> histories = [
    HistoryDetail(detail: "Học võ vovinam", age: 2),
    HistoryDetail(detail: "Học lập trình", age: 3),
    HistoryDetail(detail: "Học tiếng Anh", age: 4),
    HistoryDetail(detail: "Học tiếng Nhật", age: 5),
    HistoryDetail(detail: "Học tiếng Hàn", age: 6),
    HistoryDetail(detail: "Học tiếng Trung", age: 7),
    HistoryDetail(detail: "Học tiếng Pháp", age: 8),
    HistoryDetail(detail: "Học tiếng Đức", age: 9),
    HistoryDetail(detail: "Học tiếng Tây Ban Nha", age: 10),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Info Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            yourAge++;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/avatar.jpg"),
              radius: 50.0,
            ),
          ),
          Divider(
            height: 90.0,
            color: Colors.grey[800],
          ),
          Text("NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )),
          SizedBox(height: 10.0),
          Text("Ngạn DZ",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 30.0),
          Text("Age",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )),
          SizedBox(height: 10.0),
          Text("$yourAge",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 30.0),
          Row(
            children: [
              Icon(Icons.email, color: Colors.grey[400]),
              SizedBox(width: 10.0),
              Text("tranvanngan.work@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  )),
            ],
          ),
          SizedBox(height: 30.0),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: histories
                  .map((item) => Text("${item.detail} - ${item.age} tuổi",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      )))
                  .toList())
        ]),
      ),
    );
  }
}
