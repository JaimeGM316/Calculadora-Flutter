import 'package:flutter/material.dart';

class CalculadoraProvider extends ChangeNotifier {
  double a = 0;
  double b = 0;
  double c = 0;
  String op = "";
  String cadPant = "";
  void borrarTodo() {
    a = 0;
    b = 0;
    c = 0;

    cadPant = "";
    notifyListeners();
  }

  void limpiarDatos() {
    cadPant = "";
    notifyListeners();
  }

  void setCadPant(String v) {
    cadPant += v;
    notifyListeners();
  }

  void eventoresta() {
    op = '-';
    a = double.parse(cadPant);
    limpiarDatos();
  }

  void eventomult() {
    op = '*';
    a = double.parse(cadPant);
    limpiarDatos();
  }

  void eventodiv() {
    op = '/';
    a = double.parse(cadPant);
    limpiarDatos();
  }

  void eventoMas() {
    a = double.parse(cadPant);
    limpiarDatos();
  }

  void eventoIgual() {
    b = double.parse(cadPant);
    if (op == "+") {
      a = a + b;
    } else if (op == "-") {
      a -= b;
    } else if (op == "*") {
      a = a * b;
    } else if (op == "/") {
      a = a / b;
    }
    cadPant = "$a";
    notifyListeners();
  }

  void operacion({
    required String p1,
    required String p2,
  }) {
    a = double.parse(p1);
    b = double.parse(p2);
    c = a + b;
  }
}
