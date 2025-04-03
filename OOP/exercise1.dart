// Entidade USUARIO

class User {
  final String email;
  final String password;

  User({required this.email, required this.password});
}

void main(List<String> args) {
  final user = User(email: "email", password: "password");
  print(user.password);
}