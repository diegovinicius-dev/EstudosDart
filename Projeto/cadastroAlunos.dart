import 'dart:io';

List listaAlunos = [];


void main(List<String> args) {
  print('*--- Inscrição de alunos ---*');
  print('Insira os dados do aluno');
  String cadastrarMaisUmAluno = 'sim';

  do {
    Map dadosDoAluno = obterDadosAluno();
    cadastrarAluno(dadosDoAluno);
    cadastrarMaisUmAluno = perguntarCadastrarMaisUmAluno();
  } while (cadastrarMaisUmAluno == 'sim');
  
  print('Alunos cadastrados:');
  print(listaAlunos.map((dadoAluno){
    return dadoAluno['nome'];
  }));

}


obterDadosAluno() {
  print('Digite o nome do aluno: ');
  final String nome = stdin.readLineSync()!;

  print('Digite a idade do aluno: ');
  int? idade;

  try {
    idade = int.parse(stdin.readLineSync()!);
  } catch (e) {
    idade = null;
  }

  return {'nome':nome, 'idade':idade};
}

cadastrarAluno(Map dadoAluno) {
  listaAlunos.add(dadoAluno);
}

String perguntarCadastrarMaisUmAluno() {
  String continuar;
  do {
    print('Deseja cadastrar mais um aluno? (sim/não)');
    continuar = stdin.readLineSync()!;
  } while (continuar != 'sim' && continuar == 'não');
  return continuar;
}