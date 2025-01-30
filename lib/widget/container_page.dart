import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_box),
          title: Text("Dontolllll"),
          actions: [
            IconButton(onPressed:(){}, icon: Icon(Icons.shop))
          ],
        ),
        body: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(8, (index) {
            return Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.grey,
                height: 100,
                width: 100,
              ),
            );
          }),
        )
        // ListView(
        //   children: [
        //     Container(
        //       // margin: EdgeInsets.all(18),
        //       // padding: EdgeInsets.all(18),
        //       height: 200,
        //       width: 100,
        //       color: Colors.grey,
        //       child: Text("Hello Container1"),
        //     ),
        //     Container(
        //       // margin: EdgeInsets.all(18),
        //       // padding: EdgeInsets.all(18),
        //       height: 200,
        //       width: 100,
        //       color: Colors.grey,
        //       child: Text("Hello Container2"),
        //     ),
        //     Container(
        //       // margin: EdgeInsets.all(18),
        //       // padding: EdgeInsets.all(18),
        //       height: 200,
        //       width: 100,
        //       color: Colors.grey,
        //       child: Text("Hello Container3"),
        //     ),
        //     Container(
        //       // margin: EdgeInsets.all(18),
        //       // padding: EdgeInsets.all(18),
        //       height: 200,
        //       width: 100,
        //       color: Colors.grey,
        //       child: Text("Hello Container4"),
        //     ),
        //     Container(
        //       // margin: EdgeInsets.all(18),
        //       // padding: EdgeInsets.all(18),
        //       height: 200,
        //       width: 100,
        //       color: Colors.grey,
        //       child: Text("Hello Container5"),
        //     ),
        //     Container(
        //       // margin: EdgeInsets.all(18),
        //       // padding: EdgeInsets.all(18),
        //       height: 200,
        //       width: 100,
        //       color: Colors.grey,
        //       child: Text("Hello Container6"),
        //     ),
        //   ],
        // )

        );
  }
}
