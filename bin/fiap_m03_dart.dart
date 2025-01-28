// NO DIRETÓRIO BIN, NA FUNÇÃO MAIN, É O PONTO DE ENTRADA DO CÓDIGO
import 'package:fiap_m03_dart/aula_02.dart';

void main(List<String> arguments) {
  Brazilian a = Brazilian(nameParameter: 'João', cityOfBirth: 'Xique-Xique');

  a.getOrigin();
}
