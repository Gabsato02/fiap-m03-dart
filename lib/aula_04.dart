// USO DE PACOTES E BIBLIOTECAS
import 'package:intl/intl.dart';

void getCurrentDate() {
  var now = DateTime.now();
  var formatter = DateFormat('dd/MM/yyyy');
  String formattedDate = formatter.format(now);

  print('Data de hoje: $formattedDate');
}