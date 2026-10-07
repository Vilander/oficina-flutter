class User {
  final String nome;
  final int idade;

  User({required this.nome, required this.idade});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      nome: json['nome'],
      idade: json['idade'],
    );
  }
}