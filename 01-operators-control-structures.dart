/*
 * EJERCICIO:
 * - Crea ejemplos utilizando todos los tipos de operadores de tu lenguaje:
 *   Aritméticos, lógicos, de comparación, asignación, identidad, pertenencia, bits...
 *   (Ten en cuenta que cada lenguaje puede poseer unos diferentes)
 * - Utilizando las operaciones con operadores que tú quieras, crea ejemplos
 *   que representen todos los tipos de estructuras de control que existan
 *   en tu lenguaje:
 *   Condicionales, iterativas, excepciones...
 * - Debes hacer print por consola del resultado de todos los ejemplos.
 *
 * DIFICULTAD EXTRA (opcional):
 * Crea un programa que imprima por consola todos los números comprendidos
 * entre 10 y 55 (incluidos), pares, y que no son ni el 16 ni múltiplos de 3.
 *
 * Seguro que al revisar detenidamente las posibilidades has descubierto algo nuevo.
 */

var a = 10;
var b = 3;
var c = 5.0;
var cInteger = 5;

void main() {
  print("a = 10, b = 3");
  print("a + b = ${a + b}");
  print("a - b = ${a - b}");
  print("a * b = ${a * b}");
  print("a / b = ${a / b}");
  print("a % b = ${a % b}");
  print("a % b = ${a ~/ b}");

  print("c = 5");
  c++;
  print("c++ = $c");
  c--;
  print("c-- = $c");
  ++c;
  print("++c = $c");
  --c;
  print("--c = $c");

  print('''
  c += 3 = ${c += 3}
  c -= 3 = ${c -= 3}
  c *= 3 = ${c *= 3}
  c /= 3 = ${c /= 3}
  c ~/= 3 = ${cInteger ~/= 3}
  ''');

  print("10 == 10 : ${10 == 10}");
  print("10 != 10 : ${10 != 5}");
  print("10 > 10 : ${10 > 5}");
  print("10 < 10 : ${10 < 20}");
  print("10 >= 10 : ${10 >= 10}");
  print("10 <= 10 : ${10 <= 10}");

  bool x = true;
  bool y = false;

  print("!x = ${!x}");
  print("x && y = ${x && y}");
  print("x || y = ${x || y}");

  // OPERADOR TERNARIO
  print('c > 0 ? "positive" : "negative" = ${c > 0 ? "positive" : "negative"}');

  // CONTROL STRUCTURES
  // if - else
  print(ifElse(5));
  print(ifElse(14));
  print(ifElse(32));

  // switch - case
  print(switchCase("Lunes"));
  print(switchCase("MIERCOLES"));
  print(switchCase("Viernes"));
  print(switchCase("Domingo"));

  print(switchCaseV2("Lunes"));
  print(switchCaseV2("MARTES"));
  print(switchCaseV2("Jueves"));
  print(switchCaseV2("viernes"));
  print(switchCaseV2("sabado"));


  for(int i = 0; i < 10; i++){
    print(i);
  }

  print("for...in");
  final numbers = [1, 2, 3, 4, 5, 6, 8, 10 ,12, 13, 14, 15, 16, 17, 18];
  for(var value in numbers){ print(value); }

  print("forEach");
  numbers.forEach((v){ print(v); });


  print("while");
  int value = 0;
  while(value < 9) {
    print(value);
    value++;
  }

  print("do while");
  value = 0;
  do{
    print(value);
    value++;
  } while (value < 9);
}

String ifElse(int age){
  if(age > 18){
    return 'Adult';
  } else if(age > 13){
    return 'Young';
  } else {
    return 'Child';
  }
}

String switchCase(String day){
  switch(day.toLowerCase()){
    case 'lunes':
      return "Inicio de semana";
    case 'viernes':
      return "Inicio del Fin de semana";
    case 'sabado' || 'domingo':
     return "Fin de semana";
    default:
      return "Día normal";
  }
}

String switchCaseV2(String day){
 return switch(day.toLowerCase()){
    'lunes' => "Inicio de semana",
    'viernes' => "Inicio del Fin de semana",
    'sabado' || 'domingo' => "Fin de semana",
    _ => "Día normal",
  };
}
