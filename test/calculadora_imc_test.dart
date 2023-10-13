import 'package:calculadora_imc/util/calcula_imc.dart' as calculadora;
import 'package:test/test.dart';

void main() {
  test('Calculadora IMC', () {
    expect(calculadora.calculaIMC(75, 1.75),
        equals({"value": 24.49, "message": "Saudável"}));
  });
}
