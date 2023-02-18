
/**
 * Argumentos posicionales
 * Si quiere hacer un argumento posicional opcional lo encierro entre [];
 */

void saludar( String mensaje, [String nombre = '<insertar nombre>', int edad = 20] ) {
  print('$mensaje $nombre $edad');
}


/**
 * Argumento por nombre
 * required obliga a que ese argumento sea obligatorio
 */

void saludar2( String mensaje, {required String nombre, int veces = 10}) {
  print('Saludar2: $mensaje $nombre - $veces');

}


main(List<String> args) {


  saludar('hola', 'marco', 42);

  saludar2('saludos', nombre: 'Tony');

}