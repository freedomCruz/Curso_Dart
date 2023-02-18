class Persona {

  //Campos o propiedades
  String? nombre;
  int? edad;
  String _bio = 'Hola, soy una propiedad privada)'; //Para hacer una propiedad privada basta con añadir '_'bio

  // Get & Sets
  // String get bio {
  //    return _bio.toUpperCase(); 
  //} 
  String get bio => _bio.toUpperCase();
  
  set bio(String texto) => _bio = texto;

  // Constructores
  //   Persona( String nombre, int edad) {
  //   // // print('Constructor');
  //   // this.edad   = edad;
  //   // this.nombre = nombre;
  // }

    Persona({ this.edad = 0, this.nombre = 'Sin nombre'});

  // ====Constructores con nombre
    Persona.persona30( this.edad, {this.nombre = 'Juana de Arco'});

    Persona.persona40( String nombre) {

      this.edad   = 23;
      this.nombre = nombre;
    } 



  // Métodos

    @override
  String toString() => '$nombre $edad $_bio';
  
}