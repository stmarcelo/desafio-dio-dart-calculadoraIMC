import 'dart:io';

import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/util/calcula_imc.dart' as calculadora;
import 'package:calculadora_imc/util/console_util.dart';

class Main {
  static void main() {
    print("\n\nBem-vindo a calculadora de Índice de massa corporal (IMC)\n\n");
    var pessoa = Pessoa();
    try {
      pessoa.setNome(ConsoleUtil.inputString("Informe seu nome: "));
      pessoa.setPeso(ConsoleUtil.inputDouble("Informe seu peso (kg): "));
      pessoa.setAltura(ConsoleUtil.inputDouble("Informe sua altura (m): "));
      var imc = calculadora.calculaIMC(pessoa.getPeso()!, pessoa.getAltura()!);

      print(
          "\n\nResultado para a pessoa ${pessoa.getNome()} com ${pessoa.getAltura()}m e ${pessoa.getPeso()}kg");
      print("\nResultado: ${imc["value"]} - ${imc["message"]}\n\n\n");
      exit(0);
    } catch (e) {
      print(e);
      exit(0);
    }
  }
}
