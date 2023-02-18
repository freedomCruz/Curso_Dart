
import 'clases/persona.dart';

main () {

  final persona  = new Persona( nombre: 'William', edad: 42);
  final persona2 = new Persona.persona40('Laura');

  // persona..nombre = 'Fernando'
  //        ..edad   = 33;
  //       //  ..bio    = 'Nación en Bogotá-Colombia'; // Es una propiedad privada y no se puede ejecutar como pública
  // persona.bio = 'Cambié el valor';

  print( persona2 ); 
}

// A continuación se muestar como se declara una clase en Dart.

