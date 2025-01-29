// PROGRAMAÇÃO ASSÍNCRONA

/* Equivalente às Promises do JavaScript, a Future é uma classe
que eventualmente retornará um resultado */
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 3), () {
    return "Dados carregados!";
  });
}

void asyncProgrammingExample() async {
  print('Inicializando execução...');

  print('Buscando dados...');

  try {
    String resp = await fetchData();

    print(resp);

    print('Execução encerrada');
  } catch (error) {
    print('Erro ao executar: ${error.toString()}');
  }
}

// STREAM - retorna dados de forma sequencial
Stream<int> countdown(int start) async* { 
  for (var i = start; i > 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void executeCountdown() async {
  print('Iniciando contagem regressiva...');

  await for (int number in countdown(5)) {
    print(number);
  }

  print('Contagem encerrada');
}
