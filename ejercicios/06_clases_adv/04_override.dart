
class Persona {

  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

class Cliente extends Persona {

    String? direccion;
    List ordenes = [];

    Cliente(int edadActual, String nombreActual): 
    super(nombreActual, edadActual);

    @override
    void imprimirNombre(){
      super.imprimirNombre();// Por si quiero imprimir también el método de la clase padre.
      print('Cliente: $nombre ($edad)');
    }
}



main(List<String> args) {

  final maria = new Cliente( 33, 'María');

  maria.imprimirNombre();
  
}