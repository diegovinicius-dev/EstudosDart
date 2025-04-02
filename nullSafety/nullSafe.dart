late int idade;

void main(List<String> args) {
  String? nome; // foi inicializada com valor nulo

  isEmpty(nome);

  idade = 30;
  print(idade);
}

isEmpty(String? nome) {
  print(nome);
}