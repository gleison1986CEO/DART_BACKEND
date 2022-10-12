import 'dart:convert' as convert;
import 'dart:convert';

import 'package:http/http.dart' as http;

// EXEMPLO MÉTODO GET //
// EXEMPLO MÉTODO GET //
// EXEMPLO MÉTODO GET //
// EXEMPLO MÉTODO GET //

Future main(List<String> arguments) async {
  var argumentos = 'Nomes';
  var quantidade = 20000;
  var URL_ENDPOINT = Uri.parse('http://192.168.1.14:4000/api/$argumentos');
  http.Response response = await http.get(URL_ENDPOINT);
  try {
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      for (int i = 0; i < quantidade; i++) {
        print(decodedData['data'][i]['Nome_']);
        print(decodedData['data'][i]['Idade_']);
        print(decodedData['data'][i]['Posicao_']);
      }
    } else {
      print('ERROR!!!!!!!');
    }
  } catch (e) {
    print('ERROR!!!!!!!');
  }
}

// EXEMPLO MÉTODO GET //
// EXEMPLO MÉTODO GET //
// EXEMPLO MÉTODO GET //
// EXEMPLO MÉTODO GET //
