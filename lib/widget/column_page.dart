import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("text1"),
          Text("text2"),
          Text("text3"),
          Text("text4"),
          Text("text5"),
          Text("text6"),
          Row(children: [
            Text("text 1"),
            Text("text 2"),
            Text("text 3"),
            Text("text 4"),
            Text("text 5"),
            Text("text 6"),
          ],)
        ],
      ),
    );
  }
}
