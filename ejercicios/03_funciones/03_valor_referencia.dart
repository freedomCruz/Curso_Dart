/**En esta clase vemos que cuando se pasan argumentos no primitivos
 * los hace por referencia, es decir, cualquier cambio en los argumentos
 * que pasen de una función a otra los apunta a memoria. Hay que tenerlo
 * muy presente para romper la referencia si es necesario y no cambiar
 * su estado inicial.
 */


String capitalizar( String texto) {
  texto = texto.toUpperCase();
  return texto;
}

Map<String, String> capitalizarMap(Map<String, String> mapa) {

  
  mapa = { ...mapa};//Romper la referencia 

  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';
  return mapa;
}

main(List<String> args) {

  String nombre = 'william';
  String nombre2 = capitalizar(nombre);

  // print(nombre);
  // print(nombre2);

  

Map<String, String> persona = {
  'nombre': 'Tony Stark',
};

Map<String, String> persona2 = capitalizarMap(persona);

  print(persona);
  print(persona2);
}


