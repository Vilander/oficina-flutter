import 'package:flutter/material.dart';
import 'package:oficina/feature/models/users.dart';

class UserDialog extends StatelessWidget{
  final User user;
  const UserDialog({super.key, required this.user});


  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, 
                  icon: Icon(Icons.close),
                  ),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                user.idade >= 18 
                ? DecoratedBox(
                    decoration: BoxDecoration(color: Colors.green.shade200, borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.check, color: Colors.green, size: 52),
                    ))
                : DecoratedBox(
                    decoration: BoxDecoration(color: Colors.red.shade200, borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.close, color: Colors.red, size: 52),
                    ))
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(user.idade >= 18 
                    ? "O usuário ${user.nome} pode consumir bebida alcoólica" 
                    : "O usuário ${user.nome} NÃO pode consumir bebida alcoólica", 
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center
                    ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(child: Text(user.idade >=18 
                ? "O usuário pode consumir álcool, pois é maior de idade"
                : "O usuário não pode consumir álcool, pois é menor de idade",
                textAlign: TextAlign.center,
                ))
              ],
            ), 
          ],
        ),
      ),
    );
  }
}