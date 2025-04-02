void main(List<String> args) {
  var lista = [0,0,0];
  lista[0] = 1;
  lista[1] = 2;
  lista[2] = 3;
  print(lista);

  var lista2 = [];
  lista2.add(1);
  lista2.add(2);
  print(lista2);

  // Manipulação de Listas
  lista2.add(3);
  lista2.remove(2);
  print(lista2);
  print('O tamanho da lista2 é: ${lista2.length}');
  print('O tamanho da lista é: ${lista.length}');

  // Mais estudos sobre Listas
  List aprovados = ['Ariel', 'Daniel', 'João'];

  print(aprovados);
  print(aprovados.elementAt(1));
  print(aprovados[2]);
  print(aprovados.length);

  aprovados.add('Maria');
  aprovados[0] = 'Jorge';
  print(aprovados);

  aprovados.removeLast();
}
