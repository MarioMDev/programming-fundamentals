/*
 * Crea una única función (importante que sólo sea una) que sea capaz
 * de calcular y retornar el área de un polígono.
 * - La función recibirá por parámetro sólo UN polígono a la vez.
 * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
 * - Imprime el cálculo del área de un polígono de cada tipo.
 */

sealed class Poligono {}

class Triangulo implements Poligono{
  
  Triangulo({
    required this.altura,
    required this.base
  });
  
  final double altura;
  final double base;
}

class Cuadrado implements Poligono{
  Cuadrado({required this.lado});
  final double lado;
}

class Rectangulo implements Poligono{

  Rectangulo({
    required this.altura, 
    required this.base
    });

  final double base;
  final double altura; 
}

double calcularArea(Poligono poligono) => switch(poligono) {
  Triangulo(base: var base, altura: var altura) => (base * altura) / 2,
  Cuadrado(lado: var lado) => lado * lado,
  Rectangulo(altura: var altura, base: var base) => altura * base,
};


void main(){
  print( "Área de un triangulo base 3 y altura 4 = ${
    calcularArea(Triangulo(altura: 3, base: 4))
  }" );

  print( "Área de un cuadrado lado 3 = ${
    calcularArea(Cuadrado(lado: 3))
  }" );

   print( "Área de un rectangulo base 4 y altura 2 = ${
    calcularArea(Rectangulo(altura: 4, base: 2))
  }" );
}