class AccountBank {
  String id;
  String cpf;
  int value = 100;

  AccountBank({required this.id, required this.cpf});

  void paymentTo(int value) {
    this.value = this.value - value;
    print("Pagamento efetuado com sucesso!");
  }

  @override
  String toString() {
    return 'AccountBank(id: $id, cpf: $cpf, value: $value)';
  }
}

void main(List<String> args) {
  final account = AccountBank(id: "001", cpf: "xxx-xxxx-xxxx");

  account.paymentTo(12);
  print(account.value);

  print(account);
}