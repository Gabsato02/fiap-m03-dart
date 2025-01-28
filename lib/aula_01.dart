// NO DIRETÓRIO LIB VAI TODA A LÓGICA DE PROGRAMAÇÃO

void variableTypes() {
  int integerVar = 1;

  double doubleVar = 1.5;

  String stringVar = 'Um';

  bool booleanVar = true;

  (String key, int value) recordVar = ('Valor', 10);

  List<int> listVar = [1, 2, 2, 3];

  Set<int> setVar = { 1, 2, 3};
  
  Map<String, dynamic> mapVar = {
    'name': 'Fulano',
    'age': 25,
  };


  print('Variável número inteiro: $integerVar');
  print('Variável número decimal: $doubleVar');
  print('Variável texto: $stringVar');
  print('Variável booleano: $booleanVar');
  print('Variável Record: $recordVar');
  print('Variável Array (lista): $listVar');
  print('Variável Set: $setVar');
  print('Variável Map: $mapVar');
  print('Variável número inteiro: $integerVar');
}
