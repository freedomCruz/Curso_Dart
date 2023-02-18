
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:paquetes/classes/req.paises.dart';
// import 'package:paquetes/classes/reqres.respuesta.dart';
// import 'classes/reqres.respuesta.dart';

//  void getReqResp_service() {

//   final url = Uri.parse('https://reqres.in/api/users?page=2');
//              http.get(url).then( (res) {

//        final resReqRes =  reqResRespuestaFromJson(res.body );
//        print(res);
//        final body = jsonDecode(res.body);

//       print(body);
//       print('page: ${ body['page'] }');
//        print('per_page: ${ body['per_page'] }');
//        print('id del tercer elemento: ${ body['data'][2]['id'] }');
  
//        print('page: ${ resReqRes.page }');
//        print('per_page: ${ resReqRes.perPage }');
//        print('id del tercer elemento: ${ resReqRes.data[2].id }');

//        });

//  }

void getReqPais(){

    final link = Uri.parse('https://restcountries.com/v2/alpha/col');

    http.get(link).then((respais) {
      final resReqPais = paisFromJson(respais.body);

      final body = jsonDecode(respais.body);

      // print(resReqPais);

        print('Debug Console: ');
        print('===========================');
        print('País: ${resReqPais.name}');
        print('Población: ${resReqPais.population}');
        print('Fronteras:');
        resReqPais.borders.forEach((f) => print('    $f'));
        print('Lenguaje: ${resReqPais.languages[0].nativeName}');

        // print('Lenguaje: ${ body['languages'[2]] }');

        print('Latitud: ${resReqPais.latlng.first}');
        print('Logitud: ${resReqPais.latlng.last}');
        print('Moneda: ${resReqPais.currencies[0].name}');
        print('Bandera: ${resReqPais.flag}');
        print('===========================');
    });
}