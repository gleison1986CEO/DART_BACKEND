import 'package:mysql_client/mysql_client.dart';

Future<void> main(List<String> arguments) async {
  final conn = await MySQLConnection.createConnection(
    host: "127.0.0.1",
    port: 3306,
    userName: "XXXXXXXXXXXXX",
    password: "XXXXXXXXXXXXX",
    databaseName: "dart", ///////////////BASE DE DADOS DART
  );

  await conn.connect();
//////////////////////// ATUALIZAR IDADE //////////////////
  var res = await conn.execute(
    "UPDATE Pessoas_ SET Idade = :Idade",
    {"price": 36},
  );

  print(res.affectedRows);
  await conn.close();
}
