import 'dart:io';

import 'package:args/args.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as io;

import 'api.dart';

/////////////////////////SERVIDOR DART UTILIZANDO SHELF/////////////////
////////////////////////////SERVIDOR DART UTILIZANDO SHELF/////////////////
////////////////////////////SERVIDOR DART UTILIZANDO SHELF/////////////////
////////////////////////////SERVIDOR DART UTILIZANDO SHELF/////////////////

const _SERVIDOR = '192.168.1.14';

void main(List<String> args) async {
  var parser = ArgParser()..addOption('PORTA', abbr: 'P');
  var result = parser.parse(args);
  var PORTAStr = result['PORTA'] ?? Platform.environment['PORTA'] ?? '4000';
  var PORTA_ = int.tryParse(PORTAStr);

  if (PORTA_ == null) {
    stdout.writeln('ERROR "$PORTAStr" PORTA OCUPADA.');
    exitCode = 64;
    return;
  }

  var server = await io.serve(Api().handler, _SERVIDOR, PORTA_);
  print('SERVIDOR:::: http://${server.address.host}:${server.port}');
}

shelf.Response _echoRequest(shelf.Request request) =>
    shelf.Response.ok('"${request.url}"');



/////////////////////////SERVIDOR DART UTILIZANDO SHELF/////////////////
////////////////////////////SERVIDOR DART UTILIZANDO SHELF/////////////////
////////////////////////////SERVIDOR DART UTILIZANDO SHELF/////////////////
////////////////////////////SERVIDOR DART UTILIZANDO SHELF/////////////////
