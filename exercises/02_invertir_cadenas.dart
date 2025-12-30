/*
 * Crea un programa que invierta el orden de una cadena de texto
 * sin usar funciones propias del lenguaje que lo hagan de forma automática.
 * - Si le pasamos "Hola mundo" nos retornaría "odnum aloH"
 */

void main() {
  invertirCadenaTexto("Golitupear");
  invertirCadenaTexto("Murciélago");
  invertirCadenaTexto("Supercafrilagisticoespialidoso");
  invertirCadenaTexto("Lorem ipsum");

}

void invertirCadenaTexto(String texto) {
    final posicionFinal = texto.length - 1;
  List<String> cadenaInvertida = [];

 for(int i = posicionFinal; i >= 0; i--){
   cadenaInvertida.add(texto[i]);
 }
  
  print(cadenaInvertida.join());
}