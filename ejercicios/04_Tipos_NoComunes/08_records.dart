void main(List<String> args) {
  userInfo(json);

  print(listCollection());
  print(userInfo(json));

  

  print(listMapper().car['motor']['capacity']);
}


typedef ListMapper<T> = Map<T, dynamic>;
class listMapper {

  ListMapper<String> car = {
    'name': ['Toyota', 'Volkswagen', 'Nissan'],
    'color': ['Rojo', 'Negro', 'Azul'],
    'year': '2024',
    'motor': {
      'type': 'diesel',
      'capacity': 1.6,
      'transmision': 'manual',
    }
  };
}



(String name, int age) userInfo(Map<String, dynamic> json){
  return (json['name'] as String, json['age'] as int);
}

final json = {
  'name': 'Tony',
  'age': 45
};


// Collection if and for

List<String> listCollection() {
  var listOfNumbers = [1,2,3,4,5,6];
  var listOfStrings = ['#0', for(var i in listOfNumbers) '#$i'];
  return listOfStrings;
}


