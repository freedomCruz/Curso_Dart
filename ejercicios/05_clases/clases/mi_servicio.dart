
class MiServicio {

 // Patron Singleton :)
  
  static final MiServicio _singleton = new MiServicio._internal(); // Propiedad  estática Privada, para generar un espacio en memoria

  factory MiServicio() { // Regresa la instancia de la clase el _singleton
    return _singleton;
  }


  MiServicio._internal();//Constructor privado -> Genera una instancia privada


  String url = 'https://abc';
  String key = 'ABC123';

}