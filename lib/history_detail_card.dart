import 'package:flutter/material.dart';
import 'package:personal_info_app/history_detail.dart';

class HistoryDetailCard extends StatelessWidget {
  final HistoryDetail item;

  const HistoryDetailCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              item.detail,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              item.age.toString(),
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
