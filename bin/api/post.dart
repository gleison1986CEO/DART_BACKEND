import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:dio/dio.dart';

//DIO POST REQUEST
//DIO POST REQUEST
//DIO POST REQUEST
//DIO POST REQUEST

main() async {
  var dio = Dio();
  var response = await dio.post('http://192.168.1.14:4000/api/add', data: {
    "id": 10,
    "Nome_": 'JhonSebastian',
    "Posicao_": 'Atacante',
    "Idade_": 2,
  });
}


//DIO POST REQUEST
//DIO POST REQUEST
//DIO POST REQUEST
//DIO POST REQUEST