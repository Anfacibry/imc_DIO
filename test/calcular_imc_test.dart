// import 'dart:io';

import 'package:calcular_imc/calcular_imc.dart';
import 'package:test/test.dart';

void main() {
  // stdout.write('Digite sua nome: ');
  // String? nome = stdin.readLineSync();
  // stdout.write('Digite seu peso: ');
  // double? peso = double.tryParse(stdin.readLineSync()!);
  // stdout.write('Digite sua altura: ');
  // double? altura = double.tryParse(stdin.readLineSync()!);
  test('calculate', () {
    expect(
        Pessoa().imc(
          nome: "Fabricio",
          peso: 64,
          altura: 1.78,
        ),
        equals(20.2));
  });
  test("Testando erro com valor de peso menor ou igual a zero", () {
    expect(
      () => Pessoa().imc(nome: "Fabricio", peso: 0, altura: 1.78),
      throwsA(
        TypeMatcher<ArgumentError>(),
      ),
    );
  });
}
