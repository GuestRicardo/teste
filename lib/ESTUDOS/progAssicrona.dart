import 'dart:async';

void main() async {
//   Future<void> quatro = Future.delayed(Duration(seconds: 3));
// //aq ele vai imprimir o numero o 4
//   quatro.then((value) => print(4));

  print(1);
  print(2);
  print(3);
  await quatro();
  //o await e usado quando tem um processo q depende de outro,
  //neste caso o 5 esta esperando os 34 segundos pra imprimir depois do 4, q esta com
  //com a configuração na função abaixo
  print(5);
}

Future<void> quatro() async {
  Future.delayed(const Duration(seconds: 3), () => print(4));
}
