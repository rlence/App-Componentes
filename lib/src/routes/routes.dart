import 'package:flutter/material.dart';

import 'package:componentes/src/page/animate_container.dart';
import 'package:componentes/src/page/card_page.dart';
import 'package:componentes/src/page/alert_page.dart';
import 'package:componentes/src/page/avatar_page.dart';
import 'package:componentes/src/page/home_page.dart';
import 'package:componentes/src/page/inputs_page.dart';
import 'package:componentes/src/page/slider_page.dart';
import 'package:componentes/src/page/listview_page.dart';

Map <String, WidgetBuilder> getAplicationRoutes(){

      return  <String, WidgetBuilder> {//rutas con nombre leyendo de un json
        '/' : (BuildContext context) => HomePage(),
        'alert':(BuildContext context) => AlertPage(),
        'avatar':(BuildContext context) => AvatarPage(),
        'card':(BuildContext context) => CardPage(),
        'animetedContainer':(BuildContext context) => AnimatedContainerPage(),
        'inputs':(BuildContext context) => InputPage(),
        'sliders':(BuildContext context) => SliderPage(),
        'list':(BuildContext context) => ListaPage(),
        
        
        
      };


}

