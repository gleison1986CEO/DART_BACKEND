import 'package:mysql_client/mysql_client.dart';

Future<void> main(List<String> arguments) async {
  final conn = await MySQLConnection.createConnection(
    host: "127.0.0.1",
    port: 3306,
    userName: "XXXXXXXXXXXX",
    password: "XXXXXXXXXXXX",
    databaseName: "dart", ///////////////BASE DE DADOS DART
  );

  await conn.connect();
///////////////////////QUERY SELECT/////////////////////////
  var result = await conn.execute("SELECT * FROM Pessoas_");

  print(result.numOfColumns);
  print(result.numOfRows);
  print(result.lastInsertID);
  print(result.affectedRows);
  for (final row in result.rows) {
    print(row.assoc());
  }
  await conn.close();
}
