void main(List<String> args) {
  soma(n1: 20,n2: 10);
}


soma({required n1, required n2}) {
  print('n1: $n1, n2: $n2');
  print(n1 + n2);
}