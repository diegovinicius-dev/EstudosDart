void main(List<String> args) {
  Map contato = {'nome':'Jorge', 'numero':'0000-0000'};

  contato['nome'] = 'Daniel';
  print(contato);

  contato.addAll({'cargo':'desenvolvedor'});
  print(contato);

  contato.clear();
  print(contato);


}
