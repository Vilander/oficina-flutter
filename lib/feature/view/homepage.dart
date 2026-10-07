import 'package:flutter/material.dart';
import 'package:oficina/core/services/api_services.dart';
import 'package:oficina/feature/models/users.dart';
import 'package:oficina/feature/widgets/user_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<User> users =[];

  final ApiServices apiServices = ApiServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) => 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: UserCard(user: users[index]),
                  ),
              )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () async {
                    await apiServices.getUsers().then((e) => users.addAll(e));
          
                    setState(() {});
                  },
                  child: Text('Increment'),
                ),
            ],
          ),
        ),
      )
    );
  }
}