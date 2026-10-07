import 'package:flutter/material.dart';
import 'package:oficina/feature/models/users.dart';
import 'package:oficina/feature/widgets/user_dialog.dart';

class UserCard extends StatelessWidget{
  final User user;
  const UserCard ({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(context: context, builder: (context) => UserDialog(user: user)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: BoxBorder.all(
            color: Colors.grey.shade600
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Nome: ${user.nome}", 
                    style: TextStyle(color: Colors.blue.shade400, fontSize: 20, fontWeight: FontWeight(500))),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Idade: ${user.idade}", 
                    style: TextStyle(color: Colors.blue.shade400, fontSize: 16, fontWeight: FontWeight(500)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}