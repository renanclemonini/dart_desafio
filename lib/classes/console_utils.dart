import 'dart:convert';
import 'dart:io';
import 'dart:math';

class ConsoleUtils {
  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComTextoSaida(String texto, String valorSaida) {
    do {
      try {
        var value = lerStringComTexto(texto);
        if (value == valorSaida) {
          return null;
        }
        return double.parse(value);
      } catch (e) {
        print(texto);
      }
    } while (true);
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }

  static double calculoImc(double peso, altura) => peso / pow(altura, 2);

  static String calcularImc(double peso, double altura) {
    double imc = calculoImc(peso, altura);
    String resultado = "";
    if (imc < 16) {
      resultado = "Magreza grave";
    } else if (imc >= 16 && imc < 17) {
      resultado = "Magreza Moderada";
    } else if (imc >= 17 && imc < 18.5) {
      resultado = "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      resultado = "Saudavel";
    } else if (imc >= 25 && imc < 30) {
      resultado = "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      resultado = "Obesidade Grau I";
    } else if (imc >= 35 && imc < 40) {
      resultado = "Obesidade Grau II";
    } else {
      resultado = "Obesidade Grau III";
    }
    return "IMC calculado: $imc - Classificação: $resultado";
  }


}