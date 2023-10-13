Map<dynamic, dynamic> calculaIMC(double peso, double altura) {
  if (peso <= 0) {
    throw ArgumentError("Peso informado é inválido");
  }
  if (altura <= 0) {
    throw ArgumentError("Altura informada é inválida");
  }

  double resultado =
      double.parse((peso / (altura * altura)).toStringAsFixed(2));
  switch (resultado) {
    case < 16:
      return {"value": resultado, "message": "Magreza grave"};
    case >= 16 && < 17:
      return {"value": resultado, "message": "Magreza moderada"};
    case >= 17 && < 18.5:
      return {"value": resultado, "message": "Magreza leve"};
    case >= 18.5 && < 25:
      return {"value": resultado, "message": "Saudável"};
    case >= 25 && < 30:
      return {"value": resultado, "message": "Sobrepeso"};
    case >= 30 && < 35:
      return {"value": resultado, "message": "Obesidade grau I"};
    case >= 35 && < 40:
      return {"value": resultado, "message": "Obesidade grau II (severa)"};
    case >= 40:
      return {"value": resultado, "message": "Obesidade grau III (mórbida)"};
    default:
      throw ArgumentError("Valores inválidos.");
  }
}
