import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;


class _MenuProvaider {

  List<dynamic> opciones = [];

  _MenuProvaider(){

    cargarData();

  }

  Future< List<dynamic> > cargarData() async {

    final resp = await rootBundle.loadString('data/menu_opts.json');
    

      Map dataMap = json.decode(resp);
      opciones = dataMap['rutas'];
    
      return opciones;
  }



}

final menuProvaider = new _MenuProvaider(); //creando instancia de la clase