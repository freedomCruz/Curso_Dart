


main () {


  outerloop:  //Etquetado
  for (int i = 0; i < 5; i++) {

    print('valor de i: $i \n');

    innerloop: //Etiquetado
    for (int j = 0; j < 5; j++) {
      print('valor de j: $j');
      
      if ( j == 2){
        break outerloop;
      }
    }
    print('\n');
  }
}