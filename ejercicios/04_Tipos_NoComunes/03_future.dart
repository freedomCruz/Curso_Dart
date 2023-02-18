/**El future nos funciona para llamar culquier objeto, cosa tiempo después
 * se usa para realizar acciones asyncronas
 */

import 'dart:async';

main () {

  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 segundo después');
    return 'Retorno del future';
  }); 

  // timeout.then((value) => print(value));
  // En la siguiente línea se muestra un shortcut con el print que es una
  // función que devuelve su valor
  timeout.then( print );


  print('Fin del main');

}

  