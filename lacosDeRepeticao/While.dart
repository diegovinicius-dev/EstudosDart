import 'dart:io';

void main(List<String> args) {
  var resposta = '';

  while(resposta != 'sair') {
    print('Você digitou $resposta');
    print('digite um novo valor $resposta');
    resposta = stdin.readLineSync()!;
  }

}
