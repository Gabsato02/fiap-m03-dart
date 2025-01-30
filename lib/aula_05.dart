// REQUISIÇÕES HTTP
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> fetchData(String cep) async {
  try {
    final response = await http.get(Uri.parse('https://viacep.com.br/ws/$cep/json'));

    var data = jsonDecode(response.body);

    print('GET: $data');
  } catch (err) {
    print('Error: ${err.toString()}');
  }
}