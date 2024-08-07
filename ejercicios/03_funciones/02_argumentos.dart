
/**
 * Argumentos posicionales
 * Si quiere hacer un argumento posicional opcional lo encierro entre [];
 */

void saludar( String mensaje, [String nombre = '<insertar nombre>', int? edad] ) {
  print('Saludar 1: $mensaje $nombre $edad');
}


/**
 * Argumento por nombre
 * required obliga a que ese argumento sea obligatorio
 */

void saludar2( String mensaje, {required String nombre, int veces = 23}) {
  print('Saludar2: $mensaje $nombre - $veces');

}


main(List<String> args) {


  saludar('Mensaje para', 'Willyto');

  saludar2('saludos', nombre: 'Tony');

}