//import 'data.dart';

var pessoas = [
  'Rodrigo Rahman|35|Masculino',
  'Jose|56|Masculino',
  'Joaquim|84|Masculino',
  'Rodrigo Rahman|35|Masculino',
  'Maria|88|Feminino',
  'Helena|24|Feminino',
  'Leonardo|5|Masculino',
  'Laura Maria|29|Feminino',
  'Joaquim|72|Masculino',
  'Helena|24|Feminino',
  'Guilherme|15|Masculino',
  'Manuela|85|Masculino',
  'Leonardo|5|Masculino',
  'Helena|24|Feminino',
  'Laura|29|Feminino',
];

int maleQty = 0;
int femaleQty = 0;
Set<String> pessoasSet = {};
Set<String> pessoasAdultas = {};
List<int> listIdadePessoasAdutas = [];

// Task #1 ....
Set<String> getUniquePersonSet() {
  for (var pessoa in pessoas) {
    pessoasSet.add(pessoa);
  }
  print('#1:');
  print('Lista pessoas (removida os casos duplicados):');
  print(pessoasSet);
  return pessoasSet;
}

// Task #2 & #3 ....
Set<String> findAdultsAndQtyMaleFemale(Set listPerson) {
  // #2:
  for (var pessoa in pessoasSet) {
    var pessoaData = pessoa.split('|');
    switch (pessoaData[2]) {
      case 'Masculino':
        maleQty++;
        break;
      case 'Feminino':
        femaleQty++;
        break;
    }

    // #3:
    if (int.parse(pessoaData[1]) >= 18) {
      pessoasAdultas.add(pessoa);
    }
  }
  print(' ------------------');
  print('#2:');
  print('Qtde Masc: $maleQty');
  print('Qtde Femino: $femaleQty');
  print(' ------------------');
  print('#3:');
  print('Lista de Pessoas Adultas:');
  print(pessoasAdultas);
  print(' ------------------');
  return pessoasAdultas;
}

findOldestPerson(Set pessoasAdultas) {
  print('#4:');
  for (var pessoa in pessoasAdultas) {
    var pessoaData = pessoa.split('|');
    listIdadePessoasAdutas.add(int.parse(pessoaData[1]));
  }
  listIdadePessoasAdutas.sort((n1, n2) => n2.compareTo(n1));
  print('Idade de pessoa mais velha: ${listIdadePessoasAdutas[0]} anos');
  print(' ------------------');
}

main() {
  // Baseado na lista acima.
  // 1 - Remover os duplicados
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.

  findAdultsAndQtyMaleFemale(getUniquePersonSet());
  findOldestPerson(pessoasAdultas);
}
