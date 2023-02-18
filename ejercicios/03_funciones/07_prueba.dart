
import 'dart:io';

imprimir(String mensaje) => stdout.writeln(mensaje);

String leer() => stdin.readLineSync() ?? '';

Map<String, dynamic> obtenerUsuario() {

imprimir('¿Cuál es tu nombre?');
    String nombre = leer();

    imprimir('¿Qué edad tienes?');
    dynamic edad = int.tryParse(leer()); 
    
    imprimir('¿En qué País naciste?');
    String pais = leer();

    return {'nombre': nombre, 'edad': edad, 'pais': pais};

}


main(List<String> args) {
     

final Map<String, dynamic> informacion = obtenerUsuario();

  String nombre = informacion['nombre'];
  int edad = informacion['edad'];
  String pais = informacion['pais'];

  // imprimir('Tu nombre es $nombre, tienes $edad años y naciste en $pais.');

 
  imprimir('Usuario 1 sin deduciones');
  imprimir('Nombre: $nombre | Edad: $edad años | Nacionalidad: $pais');

  double salario     = 1500;
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  informacion['salario']     = salario;
  informacion['deducciones'] = deducciones;
  informacion['salarioNeto'] = salarioNeto;

  stdout.writeln(informacion);

// Obteniendo datos de usuario dos y calculando sueldo

final Map<String, dynamic> informacion2 = obtenerUsuario();

  String nombre2 = informacion2['nombre'];
  int edad2 = informacion2['edad'];
  String pais2 = informacion2['pais'];

  imprimir('Usuario 2 sin deduciones');
  imprimir('Nombre: $nombre2 - Edad: $edad2 - Nacionalidad: $pais2');

  double salario2     = 1800;
  double deducciones2 = salario2 * 0.15;
  double salarioNeto2 = salario2 - deducciones2;

  informacion2['salario2']     = salario2;
  informacion2['deducciones2'] = deducciones2;
  informacion2['salarioNeto2'] = salarioNeto2;

  stdout.writeln(informacion2);
}
