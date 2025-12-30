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
  print("!x = ${!x}");
  print("!x = ${!x}");
}
