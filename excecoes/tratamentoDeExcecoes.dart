void main(List<String> args) {
  print(stringToInt('ola'));

  try {
    var opcao = 1;
  }
  on Exception {
    print("Você deve digitar um número válido");
  }
  finally {
    print("Entrou no finally");
  }
}

int stringToInt(String text) {
  int value;

  try {
    value = int.parse(text);
  } catch (e) {
    print(e);
    value = 123;
  }

  return value;
}
