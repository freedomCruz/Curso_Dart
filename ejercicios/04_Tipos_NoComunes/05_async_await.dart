

import 'dart:io';

main () async{

  String path = Directory.current.path + '\\assets\\personas.txt';
  // leerArchivo(path).then( print );//Resuelve el Future
  String texto = await leerArchivo(path);//Resuelve el Future y lo vuele Syncronico

  print(texto);

  print('Fin del main');
}

// [async] transforma una función en Future

Future<String> leerArchivo( String path) async{

  File file = new File( path );

  return file.readAsString();

}

