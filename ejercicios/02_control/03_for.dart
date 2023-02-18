import 'dart:io';

main () {

  // Tabla de multiplicar


  stdout.writeln('Ingrese la base de la tabla de multiplicar que desea averiguar:');
  int a = int.parse(stdin.readLineSync() ?? '0');

  for ( int i = 1; i <= 10; i++ ) {
    
    stdout.writeln('$a + $i = ${ i * a}');
    
  }


}