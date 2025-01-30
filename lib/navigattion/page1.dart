import 'package:flutter/material.dart';
import 'package:project_1/navigattion/page2.dart';
import 'package:project_1/services/user_services.dart';

import '../models/user.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late Future<List<Users>> futureUsers;
  final UserService _userService = UserService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureUsers = _userService.fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get RestAPI")),
      body: Center(
        child: FutureBuilder<List<Users>>(
          future: futureUsers,
          builder: (context, snapshot){
            if (snapshot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error : ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty){
              return Center(child: Text('User Not Found'));
            }
            
            final users = snapshot.data!;
            
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index){
                final user = users[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                  title: Text('${user.firstName} ${user.lastName}'),
                  subtitle: Text('${user.email}'),
                );
              },
            );
          }
        ),
      )
    );
  }
}
