abstract class Payment {
  String get cpf;
  int get value;

  void insertCPF(String CPF);
  void insertValue(int value);

}

class MoneyPayment implements Payment {
  late final String _cpf;
  late final int _value;

  MoneyPayment({
    required String cpf,
    required int value
  }) {
    _cpf = cpf;
    _value = value;
  }

  @override
  String get cpf => _cpf;

  @override
  void insertCPF(String CPF) {
    _cpf = cpf;
  }

  @override
  void insertValue(int value) {
    _value = value;
  }

  @override
  int get value => _value;
  
}


