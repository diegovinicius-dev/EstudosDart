void main(List<String> args) {
  String nomeCompleto = "Diego Cavalcante";

  print(nomeCompleto.length);
  print(nomeCompleto.isEmpty); // -> bool = false
  print(nomeCompleto.isNotEmpty); // -> bool = true
  print(nomeCompleto.toUpperCase());
  print(nomeCompleto.toLowerCase());
  print(nomeCompleto.replaceAll("a", "i"));

  /*
  toLowerCase(): Converte a string para letras minúsculas;
  toUpperCase(): Converte a string para letras maiúsculas;
  trim(): Remove os espaços em branco de uma string;
  compareTo(): Compara uma string a outra;
  replaceAll(): Substitui todas as ocorrências de determinado padrão de uma string;
  split(): Divide a string de acordo com um determinado delimitador;
  substring(): Retorna parte de uma string com o tamanho especificado pelo method;
  toString(): Retorna a representação do objeto como string;
  codeUnitAt(): Retorna a string no formato 16-bit UTF-16.
  */
}
