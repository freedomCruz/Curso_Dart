
abstract class Vehiculo {

  bool encendido = false;

  void encender() {
    encendido = true;
    print('Vehículo encendido');
  }
  void apagar() {
    encendido = false;
    print('Vehículo apagado');
  }

  bool revisarMotor();

}

// La clase extends nos sirve para cuando se desea utilizar los métodos de otra clase sin tener que repetirlos
class Carro extends Vehiculo {

  int? kilometraje;

  Carro(this.kilometraje);
  
  @override
  String toString() => '$kilometraje';
  
  @override
  bool revisarMotor() {
      print('Motor Ok!');
    return true;
  }
  
}


main(List<String> args) {

  final ford = new Carro(45);

  ford.encender();
  ford.apagar();
  ford.revisarMotor();
  
  
}