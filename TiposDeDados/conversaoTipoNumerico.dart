void main() {

  int moeda = 10;

  moeda.toString(); // => "10"
  print(moeda.runtimeType);
  print(moeda.toString().runtimeType);
  print(moeda.toDouble()); // -> 10.0

  print(int.parse("10").runtimeType);


}