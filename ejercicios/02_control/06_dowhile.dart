import 'dart:io';
/**
 * El ciclo do while  pasa por el codigo asi sea una vez, 
 * despues llega al while y valida la expresión.
 */


main () {

  String continuar = 'y';
  int contador = 0;


  do {

    contador++;
    stdout.writeln('Contador: $contador');

    stdout.writeln('¿desea continuar? (y/n)');
    continuar = stdin.readLineSync() ?? 'n';
  
  } while ( continuar == 'y');

}