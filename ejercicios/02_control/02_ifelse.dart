import 'dart:io';

main () {

  stdout.writeln('¿Cuál es tu edad');
  int edad = int.parse( stdin.readLineSync() ?? '0');
  
  stdout.writeln('Tu edad es de: $edad años');

  // if ( edad >= 18) {
  //   stdout.writeln('Eres mayor de edad en Colombia');
  // }else {
  //   stdout.writeln('No puedes votar en colombia hasta que cuplas la mayoría de edad');
  // }

   if ( edad >= 21){
    stdout.writeln('Ciudadano');
   } else if( edad >= 18) {
      stdout.writeln('Mayor de edad');
    } else {
      stdout.writeln('Menor de edad');
    }
    
}