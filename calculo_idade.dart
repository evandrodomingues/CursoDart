import 'dart:io';

main() {
  var input, nome, idade, qualIdade;

  print("===== Digite seu nome =====");
  input = stdin.readLineSync();
  nome = input as String;

  print("");

  print("===== Digite uma idade =====");
  input = stdin.readLineSync();
  idade = int.parse(input);

  if (idade >= 50) {
    qualIdade = "melhor idade";
  } else if (idade >= 18) {
    qualIdade = "adulto";
  } else if (idade >= 12) {
    qualIdade = "adolecente";
  } else {
    qualIdade = "criança";
  }

  print("");
  print("============================");
  print("");
  print(nome + " você é " + qualIdade);
}
