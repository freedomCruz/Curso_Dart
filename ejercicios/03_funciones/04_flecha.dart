


main () {

  int a = 10, b = 20;
  int resultado = sumarFlecha(a, b);

  List<int> listado = [1,2,3,4,5,6,6,7,8,8,9,10,11,11];

  // var nuevoListado = listado.where((numero){
  //   return numero > 4;
  // });

  var nuevoListado = listado.where( ( n ) => n > 4 );

  print(nuevoListado.toSet().toList());
}


// int sumar(int x, int y){
//   return x + y;
// } se reemplaza por una función de flecha.

int sumarFlecha( int x, int y ) => x + y;