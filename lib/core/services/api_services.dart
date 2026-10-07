import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:oficina/feature/models/users.dart';

class ApiServices{
  final baseUrl = 'https://scraggly-emphatic-liftoff.ngrok-free.dev';

  Future<List<User>> getUsers() async{
    try{
      final url = baseUrl;

      final response = await http.get(Uri.parse(url));

      if(response.statusCode != 200){
        throw Exception("Falha ao carregadr usuários");
      }

      final List<dynamic> itens = jsonDecode(response.body);

      final List<User> users = itens.map((i) => User.fromJson(i)).toList();

      return users;
    } catch (error){
      rethrow;
    }
  }
}