void main(List<String> args) {
  soma(10, 10);

  subtrair(n1: 10, n2: 5);
}


soma([int? n1, int? n2]) {
  if (n1 != null && n2 != null){
    print(n1 + n2);
  }
}

subtrair({required int n1, int? n2}) {
  if (n2 != null) {
    print(n1 - n2);
  }
}