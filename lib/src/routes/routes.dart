import 'package:flutter/material.dart';

import 'package:componentes/src/page/card_page.dart';
import 'package:componentes/src/page/alert_page.dart';
import 'package:componentes/src/page/avatar_page.dart';
import 'package:componentes/src/page/home_page.dart';

Map <String, WidgetBuilder> getAplicationRoutes(){

      return  <String, WidgetBuilder> {//rutas con nombre leyendo de un json
        '/' : (BuildContext context) => HomePage(),
        'alert':(BuildContext context) => AlertPage(),
        'avatar':(BuildContext context) => AvatarPage(),
        'card':(BuildContext context) => CardPage(),
      };


}

