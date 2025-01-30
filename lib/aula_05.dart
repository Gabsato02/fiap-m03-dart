import 'dart:convert';
import 'package:http/http.dart' as http;

// INTERCEPTOR
class ClientInterceptor extends http.BaseClient {
  final http.Client _client = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['accept'] = 'application/json';
    request.headers['Content-Type'] = 'application/json';

    return _client.send(request);
  }
}

// REQUISIÇÃO
Future<void> fetchData(String cep) async {
  try {
    final client = ClientInterceptor();

    final response = await client.get(Uri.parse('https://viacep.com.br/ws/$cep/json'));

    var data = jsonDecode(response.body);

    print('GET: $data');
  } catch (err) {
    print('Error: ${err.toString()}');
  }
}
