import 'dart:math';

class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;
  double _imc = 0;

  // Pessoa(String nome, double peso, double altura) {
  //   _nome = nome;
  //   _peso = peso;
  //   _altura = altura;
  // }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void setImc(double peso, double altura) {
    _imc = peso / pow(altura, 2);
  }

  double getImc() {
    return _imc;
  }

  @override
  String toString() {
    return "Nome: $_nome - Peso: $_peso - Altura: $_altura - IMC: $_imc".toString();
  }

}