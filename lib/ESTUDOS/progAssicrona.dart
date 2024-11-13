import 'dart:async';

void main() {
//Assicrona

// //aq esta sendo criado uma variavel tipo void q retornara somente um print, e tera uma espera de 3 segundos via o delay
//   Future<void> quatro = Future.delayed(Duration(seconds: 3));
// //aq ele vai imprimir o numero o 4
//   quatro.then((value) => print(4));

  print(1);
  print(2);
  print(3);
  quatro();
  print(5);
}

Future<void> quatro() async {
  Future.delayed(Duration(seconds: 3), () => print(4));
}
