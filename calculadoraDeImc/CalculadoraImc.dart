class CalculadoraIMC {
  double? peso;
  double? altura;


  CalculadoraIMC({this.peso, this.altura});

  void definirPeso(double novoPeso) {
    if (novoPeso > 0) {
      peso = novoPeso;
    } else {
      throw ArgumentError('O peso deve ser um número positivo.');
    }
  }

  void definirAltura(double novaAltura) {
    if (novaAltura > 0) {
      altura = novaAltura;
    } else {
      throw ArgumentError('A altura deve ser um número positivo.');
    }
  }

  double calcularImc() {
    if (peso == null || altura == null) {
      throw StateError('Peso e Altura devem ser definidos para calcular IMC.');
    }
    double alturaEmMetros = altura! / 100;
    return peso! / (alturaEmMetros * alturaEmMetros);
  }

  String classificarImc(double imc) {
    if (imc < 18.5) {
      return 'Abaixo do peso';
    } else if (imc >= 18.5 && imc <= 24.9) {
      return 'Peso Normal';
    } else if (imc >= 25 && imc <= 29.9) {
      return 'Sobrepeso';
    } else if (imc >= 30 && imc <= 34.9) {
      return 'Obesidade Grau I';
    } else if (imc >= 35 && imc <= 39.9) {
      return 'Obesidade Grau II';
    } else {
      return 'Obesidade Grau III';
    }
  }

}