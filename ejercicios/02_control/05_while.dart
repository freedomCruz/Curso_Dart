import 'dart:io';
/**
 * El ciclo while valida si la expresión se está cumpliendo
 * y se termina cuando encuentra otro valor
 */


main () {

  String continuar = 'y';
  int contador = 0;


  while ( continuar == 'y') {

    contador++;
    stdout.writeln('Contador: $contador');

    stdout.writeln('¿desea continuar? (y/n)');
    continuar = stdin.readLineSync() ?? 'n';
  
  }

}