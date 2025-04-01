import 'dart:io';
import 'CalculadoraImc.dart';

class InterfaceUsuarioImc {
  final CalculadoraIMC calculadora = CalculadoraIMC();

  // Criando um Menu
  void menu() {
    String opcao;
    do {
      print('\n--- Calculadora de IMC ---');
      print('1. Calcular IMC');
      print('0. Sair');
      stdout.write('Digite o número da Opção: ');
      opcao = stdin.readLineSync() ?? '';

      switch (opcao) {
        case '1':
          iniciarCalculadora();
          break;
        case '0':
          print('Saindo...');
          break;
        default:
          print('Opção inválida. Tente novamente.');
          break;
      }
    } while (opcao != '0');
  }

  // Tratamento para leitura do peso
  double? lerPeso() {
    double? peso;
    while (peso == null) {
      stdout.write('Digite seu peso em quilogramas (kg): ');
      String? pesoStr = stdin.readLineSync();
      if (pesoStr != null) {
        try {
          peso = double.parse(pesoStr);
          if (peso <= 0) {
            print('Valor inválido: digite um número positivo.');
            peso = null;
          }
        } catch (e) {
          print('Entrada inválida: digite um número para peso.');
        }
      } else {
        print('Nenhuma entrada fornecida para peso.');
      }
    return peso;
    }
  }

  // Tratamento para leitura da Altura
  double? lerAltura() {
    double? altura;
    while (altura == null) {
      stdout.write('Digite sua altura em centímetros (cm): ');
      String? alturaStr = stdin.readLineSync();
      if (alturaStr != null) {
        try {
          altura = double.parse(alturaStr);
          if (altura <= 0) {
            print('Valor inválido: digite um número positivo.');
            altura = null;
          }
        } catch (e) {
          print('Entrada inválida: digite um número para altura.');
        }
      } else {
        print('Nenhuma entrada fornecida para altura.');
      }
    return altura;
    }
  }

  // Iniciar calculadora
  void iniciarCalculadora() {
    double? peso = lerPeso();
    if (peso == null) return;

    double? altura = lerAltura();
    if (altura == null) return;

    try {
      calculadora.definirPeso(peso);
      calculadora.definirAltura(altura);
      double imc = calculadora.calcularImc();
      String classificacao = calculadora.classificarImc(imc);
      print('Seu IMC é:\n ${imc.toStringAsFixed(2)}.');
      print('Sua classificação é:\n ${classificacao}.');
    } catch (e) {
      print('Erro: $e');
    }
  }
}