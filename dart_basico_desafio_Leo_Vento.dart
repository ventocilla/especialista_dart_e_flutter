
// Baseado no array acima monte um relatório onde mostre
// Apresente a quantidade de pacientes com mais de 20 anos
// Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

var pacients = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

List pacientDataArray = [];
List familyRahmanArray = [];
List familySilvaArray = [];
List familyVerneArray = [];
int qtyPatientsMoreThan20Years = 0;
void main() {
  for (var i = 0; i < pacients.length; i++) {
    var pacientData = pacients[i].split('|');
    pacientDataArray.add(pacientData);

    // #1:
    if (int.tryParse(pacientData[1]) >= 20) {
      qtyPatientsMoreThan20Years++;
    }

    // #2:
    var familyName = pacientData[0].split(' ');
    switch (familyName[1]) {
      case 'Rahman':
        familyRahmanArray.add(pacientData[0]);
        break;
      case 'Silva':
        familySilvaArray.add(pacientData[0]);
        break;
      case 'Verne':
        familyVerneArray.add(pacientData[0]);
        break;
    }
  }
  print('----');
  print('Qty of Patients with More Than 20 Years: $qtyPatientsMoreThan20Years');
  print('----');
  print('Family Members:');
  print('Familia Rahman: $familyRahmanArray');
  print('familia Silva: $familySilvaArray');
  print('familia Verne: $familyVerneArray');
  print('----');
}
