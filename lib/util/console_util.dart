import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/util/string_extension.dart';

class ConsoleUtil {
  static String inputString(String message) {
    print(message);
    var typed = stdin.readLineSync(encoding: utf8);
    if (StringExtension.isEmptyOrNull(typed)) {
      throw ArgumentError("Entrada de texto inválida.");
    }
    return typed!;
  }

  static double inputDouble(String message) {
    print(message);
    var typed = stdin.readLineSync(encoding: utf8);
    double value = double.tryParse(typed ?? "") ?? 0;
    if (value > 0) {
      return value;
    }
    throw ArgumentError("Entrada de valor inválida.");
  }
}
