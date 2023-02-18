
import 'dart:math';

main (){


  int rnd = Random().nextInt(7);

  switch (rnd) {
    case 0:
      print('Domingo');
      break;
    case 1: 
      print('Lunes');
      break;
    case 2:
      print('Martes');
      break;
    case 3:
      print('Miércoles');
      break;
    case 4:
      print('Jueves');
      break;
    case 5:
      print('Viernes');
      break;
    case 6:
      print('Sábado');
      break;
      
    default:
  }

  print(rnd);
}