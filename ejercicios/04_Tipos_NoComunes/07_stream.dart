

import 'dart:async';

main (){

  final streamController = new StreamController<String>.broadcast();

  streamController.stream.listen(
    (data) => print('Despegando! $data'),
    onError: (err) => print('Error! $err'),
    onDone: () => print('Misión exitosa'),
    cancelOnError: false //usas true cuando quieres que se ejecute al econtrar el error en la línea 19
    );

  streamController.stream.listen(
    (data) => print('Despegando Stream2! $data'),
    onError: (err) => print('Error Stream2! $err'),
    onDone: () => print('Misión exitosa Stream2'),
    cancelOnError: false //usas true cuando quieres que se ejecute al econtrar el error en la línea 19
    );

  streamController.sink.add('Apolo 11');
  streamController.sink.add('Apolo 12');
  streamController.sink.add('Apolo 13');
  streamController.sink.addError('Houston, tenemos un problema!');
  streamController.sink.add('Apolo 14');
  streamController.sink.add('Apolo 15');

  streamController.sink.close();


  print('Fin del main');
}


