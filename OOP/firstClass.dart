class MinhaPrimeiraClasse {}

class Person {
  String nome;
  String cpf;
  String rg;

  Person({required this.nome, required this.cpf, required this.rg});
}

void main(List<String> args) {
  final a = MinhaPrimeiraClasse();
  final p = Person(nome: "Diego", cpf: "cpf", rg: "rg");
  print(p);
  print(a);
}