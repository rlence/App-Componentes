import 'package:flutter/services.dart' show rootBundle;


class _MenuProvaider {

  List<dynamic> opciones = [];

  _MenuProvaider(){

    cargarData();

  }

  cargarData() {

    rootBundle.loadString('data/menu_opts.json')
    .then( (data) {

      print(data);

    });

  }



}

final menuProvaider = new _MenuProvaider(); //creando instancia de la clase