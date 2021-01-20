import 'dart:io';

main() {
  var input;

  print("Digite o número de repetições ");
  input = stdin.readLineSync();
  int numero = int.parse(input);

  print("");
  print("Número de repetições " + numero.toString());
  print("");

  print("");
  print("Utilizando o FOR");

  for (int x = 0; x <= numero; x++) {
    print("Repetição $x");
  }

  print("");
  print("Utilizando o WHILE");

  bool condicao = true;
  int y = 0;

  while (condicao) {
    if (y > numero) {
      condicao = false;
    } else {
      print("Repetição $y");
    }
    y++;
  }
}
