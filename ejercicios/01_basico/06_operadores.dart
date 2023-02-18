/**
 * Esta clase se debe actualizar para que cumpla con el null-safety
 */


main () {

  //operadores de asignación

  int? a;// = 100;
  int? b;// = 1;

  //  b ??= 20;

  // print(b);

  // ==== Operadores condicionales

  int c = 27;

  String resp = c > 25 ? 'C es mayor a 25' : 'C es menor a 25';

  // print(resp);

  int? d = b ?? a  ?? 100;

  // print(d);

  // Operadores Relacionales
  // Todos retornan un valor booleano

  /**
   *  > Mayor que
   *  < Menoer que
   *  >= Mayor o igual que
   *  >= Menor o igual que
   * 
   *   == Revisa si dos objetos son iguales
   *   != Revisa si dos objeos son diferente
   */

  String persona1 = 'William';
  String persona2 = 'Alberto';

  // print(persona1 == persona2);
  // print(persona1 != persona2);


  int x = 20;
  int y = 30;

  // print(x > y);
  // print(x < y);
  // print(x <= y);
  // print(x >= y);

  // ===== Operador de Tipo

  int i = 10;
  String j = '10';

  print(i is int);
  print(j is! int);

}