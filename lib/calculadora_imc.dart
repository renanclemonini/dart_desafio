import 'dart:convert';
import 'dart:io';
// import 'dart:math';

import 'package:calculadora_imc/classes/console_utils.dart';
import 'package:calculadora_imc/classes/pessoa_class.dart';

void executar() {
  print("Bem vindo a Calculadora de IMC");
  var pessoa = Pessoa();
  
  print("Informe seu peso: ");
  var line = stdin.readLineSync(encoding: utf8);
  var peso = double.parse(line ?? "0");
  pessoa.setPeso(peso);

  print("Informe sua altura: ");
  line = stdin.readLineSync(encoding: utf8);
  var altura = double.parse(line ?? "0");
  pessoa.setAltura(altura);
  pessoa.setImc(peso, altura);

  // var imc = (peso / pow(altura, 2)).toStringAsFixed(2);

  var res = ConsoleUtils.calcularImc(peso, altura);

  print(pessoa);
  print(res);



  // print("Seu IMC é igual a: $imc");

  




  




  
  
}


