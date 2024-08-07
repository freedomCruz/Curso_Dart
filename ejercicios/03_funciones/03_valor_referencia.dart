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

List<String> capitalizarLista( List<String> lista) {
  lista = [...lista].map((e) => e.toUpperCase()).toList();
  lista.forEach((element) => print('$element: ${element.length}'));
  return lista;
}

Map<String, String> capitalizarMap(Map<String, String> mapa) {

  //Romper la referencia 
  // return { ...mapa}.map((key, value){

  //   return MapEntry(key, value.toUpperCase());
  // });
  mapa = {...mapa};

  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre'; //Para un key especifico.
  return mapa;
}

main(List<String> args) {

  String nombre = 'william';
  String nombre2 = capitalizar(nombre);

  // print(nombre);
  // print(nombre2);
  List<String> list = ['Goku', 'Vegeta', 'Trunks'];
  List<String> list2 = capitalizarLista(list);

  print(list);
  print(list2);

Map<String, String> persona = {
  'nombre': 'Tony Stark',
  'poder': 'Inteligencia'
};

Map<String, String> persona2 = capitalizarMap(persona);

  print(persona);
  print(persona2);
}


