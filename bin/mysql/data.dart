import 'package:mysql_client/mysql_client.dart';

Future<void> main(List<String> arguments) async {
  final conn = await MySQLConnection.createConnection(
    host: "localhost",
    port: 3306,
    userName: "XXXXXX",
    password: "XXXXXX",
    databaseName: "dart", ///////////////BASE DE DADOS DART
  );

  await conn.connect();
  await conn.execute(
      /////////////////////////////CRIAR TABELA PESSOAS_///////////////////////////////////////////////////////////////////////
      'CREATE TABLE Pessoas_ (id int NOT NULL AUTO_INCREMENT PRIMARY KEY, Nome_ varchar(255), Idade_ int, created_at DATETIME)');

  print("Conectado utilizando mysql_CLIENTE");
  print("Tabela Pessoas_ criada com sucesso!");

  await conn.close();
}
