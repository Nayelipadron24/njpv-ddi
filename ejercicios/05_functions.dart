void main() {
  print(saludar());
  print(greetEveryone());
  print(agregarNumeros(3, 3));
  print(addTwoNumbers(2, 3));
  print(agregarDosNumerosOpcional(4, 2));
  print(greetPerson( name: 'Nayeli'));
}

String saludar() {
  return "Hola a todos";
}

//lambda
String greetEveryone() => "Hello Everyone";

int agregarNumeros(int a, int b) {
  return a + b;
}

//funcion lambda "addTwoNumbers"

int addTwoNumbers(int a, int b) => a + b;

//Variables opcionales
int agregarDosNumerosOpcional(int a, [int? b]) {
  b = b ?? 0;
  b ??= 0;
  return a + b;
}

//Varibeles por referencia
String greetPerson({required String name, String? message = 'Hola'}) {
  return '$message, $name';
}
