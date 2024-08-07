main () {

  // ======== Números distintas formas de inicializarlas

  int a = 10;
  
  int? c;

  int _a = 30;
  double $b = 40;

 double resultado = _a + $b;

  // print(resultado);

  // ======= String

  String nombre = 'Tony';
  String nombre2 = "Tony";

 String nombre3 = 'o\'connor'; /*Se pone el \ para omitir la comilla sencilla (') */
 String nombre4 = "O'connor"; /**Otra forma de hacerlo ;) */
 String apellido = 'Stark';
 String nombre_completo = '$nombre $apellido';

 String multiline = '''
  Hola mundo
  ¿Cómo estás?
  $nombre_completo;
  Feliz de aprender Dart
''';

  // print(multiline);

  // ====== Booleans

  bool isActive = true;
  bool isNotActive = !isActive;

  // print(isNotActive); 

  // ====== Lists

  List<String> villanos = ['Lex', 'Red Skull', 'Doom'];

  villanos.add('Duende Verde');
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');
  // print(villanos);

  var villanosSet = villanos.toSet();/**Utilice el to.Set para eliminar los duplicado paso de lista a set */
  // print(villanosSet);

  // ====== Sets a diferencias de los List, no pueden tener objetos duplicados.

  Set<String> villanos2 = {'Lex', 'Red Skull', 'Doom'};

  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');
  print(villanos2);

  // ====== Maps                   Diccionarios / Objetos literales en otros lenguajes de programación.

  Map<int, dynamic> ironman = {
    1: 'Tony Stark',
    2: 'Inteligencia y dinero',
    3: 35,
  };

  print(ironman[3]);

  Map<String, dynamic> capitan = new Map();

    capitan.addAll({
      'nombre': 'Steve',
      'poder': 'Liderezgo, táctico',
      'nivel': 5000,
    });

    // capitan.addAll(ironman);

    print(capitan);

    var ab$cd = 10;
    var _ = 10;
} 