import 'dart:io';

main() {
  var input;

  print("Digite o seu peso ");
  input = stdin.readLineSync();
  double peso = double.parse(input);
  print("Digite a sua altura ");
  input = stdin.readLineSync();
  double altura = double.parse(input);

  double imc = calculoDeImc(altura, peso);
  print(imc);

  String textoApresentar = tabelaImc(imc);
  print(textoApresentar);
}

calculoDeImc(double altura, double peso) {
  return peso / (altura * altura);
}

tabelaImc(double imc) {
  var resultado = "";

  if (imc < 18.5) {
    resultado = "Peso normal";
  } else if (imc > 25 && imc < 29.9) {
    resultado = "Sobrepeso";
  } else if (imc > 30 && imc < 34.9) {
    resultado = "Obesidade grau 1";
  } else if (imc > 35 && imc < 39.9) {
    resultado = "Obesidade grau 2";
  } else {
    resultado = "Obesidade grau 3";
  }

  return (resultado);
}
