import 'package:mysql_client/mysql_client.dart';
import 'dart:math';

Future<void> main(List<String> arguments) async {
  final conn = await MySQLConnection.createConnection(
    host: "127.0.0.1",
    port: 3306,
    userName: "xxxxxx",
    password: "xxxxxx",
    databaseName: "dart", ///////////////BASE DE DADOS DART
  );

  await conn.connect();

//VALORES RANDOMICOS IDADE////////////////////////////
//VALORES RANDOMICOS IDADE////////////////////////////
//VALORES RANDOMICOS IDADE////////////////////////////
//VALORES RANDOMICOS IDADE////////////////////////////

  for (int i = 0; i < 5; i++) {
    var rng = Random();
    var Nome_ = 'LIVRO TESTE $i';
    var Idade_ = rng.nextInt(100);
    var res = await conn.execute(
        "INSERT INTO  Pessoas_ (id, Nome_, Idade_, created_at) VALUES ( :ID, :Nome_, :Idade_, :created)",
        {
          "ID": null,
          "Nome_": Nome_,
          "Idade_": Idade_,
          "created": DateTime.now()
        });
    print(res.affectedRows);
  }
  await conn.close();
}
