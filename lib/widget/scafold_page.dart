import 'package:flutter/material.dart';

class ScafoldPage extends StatelessWidget {
  const ScafoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello world"),
      ),
      body: Center(
        child: Text("ditengah")
    )
    );
  }
}
