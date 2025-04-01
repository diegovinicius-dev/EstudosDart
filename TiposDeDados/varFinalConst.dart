import 'dart:io';

void main() {
  // var tem inferencia de tipo, entao nao pode alterar
  var curso = "Dart";

  dynamic coringa = "novo valor";

  // final e const são final, então não podem mudar o valor
  final escola = stdin.readLineSync();
  const pi = 3.14;

}