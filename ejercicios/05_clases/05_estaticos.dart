
class Herramientas {

  static const List<String> listado = ['Martillo', 'Llave Inglesa', 'Desarmador'];

  static void imprimirListado() => listado.forEach(print);
}


main(List<String> args) {

  // Herramientas.listado.add('Destornillador');
  // Herramientas.listado.forEach(print);

  Herramientas.imprimirListado();
}