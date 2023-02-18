
/**
 * Un Operador es un símbolo que le dice al compiladro
 * qué debe de realizar un tarea matemática, relaconal
 * o lógica y debe de producir un resultado
 */

main() {

  int a = 10 + 5; // + 15
  a = 20 -10;     // - 10
  a = 10 * 2;     // * 20

  double b = 10 / 2; //  /  5
  b = 10 % 3;        //  %  1  El sobrante de la división
  b = -b;            //  -expr Es usado para cambiar el valor de la expresión.
  int c = 10 ~/ 3;   //  ~/ 3  División común y corriente

  int d = 1;

  d++;               //  ++ 2  Incrementea en uno la expresión
  d--;               //  -- 1  Disminuye en uno la expresión

  d += 2;            //  += 3  Incrementa la expresión en dos
  d -= 2;            //  += 1  Disminuye la expresión en dos

  d *= 4;
  print(d);
}