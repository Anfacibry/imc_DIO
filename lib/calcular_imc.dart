class Pessoa {
  double imc({
    required String nome,
    required double peso,
    required double altura,
  }) {
    double imc = (peso / (altura * altura));
    double resultadoConvertido = double.parse(imc.toStringAsFixed(2));
    print("IMC é: $resultadoConvertido");
    if (imc < 16) {
      print("Magreza grave");
    } else if (imc >= 16 && imc < 17) {
      print("Magreza moderna");
    } else if (imc >= 17 && imc < 18.5) {
      print("Magreza leve");
    } else if (imc >= 18.5 && imc < 25) {
      print("Saldavel");
    } else if (imc >= 25 && imc < 30) {
      print("Sobrepeso");
    } else if (imc >= 30 && imc < 35) {
      print("Obesidade grau I");
    } else if (imc >= 35 && imc < 40) {
      print("Obesidade grau II (Severa)");
    } else if (imc >= 40) {
      print("Obesidade grau III (Morbida)");
    }
    if (peso <= 0) {
      throw ArgumentError("Peso está abaixo de zero");
    }
    return resultadoConvertido;
  }
}
