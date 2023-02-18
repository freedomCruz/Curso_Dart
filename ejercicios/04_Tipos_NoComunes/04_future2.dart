

import 'dart:io';

main () {

  //OSC y Linux
  File file = new File( Directory.current.path + '/04_Tipos_NoComunes/assets/personas.txt');

  //Windows
  // File file = new File( Directory.current.path + '\\04_Tipos_NoComunes\\assets\\personas.txt');

  Future<String> f = file.readAsString();//Asincrono
  // String f = file.readAsStringSync(); //Inmediato

  f.then( print );

  // print(f);


  print('Fin del main');
  
}

