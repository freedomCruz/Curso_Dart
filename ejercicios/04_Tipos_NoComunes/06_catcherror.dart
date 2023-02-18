
import 'dart:async';

main () {

  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    
    //Simulación de error

    if (1 == 1) {
        throw 'auxilio!, explotó esta cosa';
    }

    return 'Retorno del future';
  }); 

  //Una forma de ejecutarlo
  // timeout.then((value) => print(value));
  // Atajo o shortcut de línea de arriba
  timeout.then( print )
          .catchError((error) => print (error));


  print('Fin del main');

}

  