import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {


  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0), //padding general del contenedor
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
              ),
          ],
        ),
      ),
    );
  }

  //este es para crear el slider o una barra para cambiar las dimensiones de la imagen
  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck) ? null //esto es para bloquear la barra si el checkbox esta activo
        :( valor ){
          setState(() {
            _valorSlider = valor;
          });
      },
    );

  }

  //este widget es para crear la imagen 
  Widget _crearImagen() {

    return Image(
      image: NetworkImage('http://fjbatresv.com/wp-content/uploads/2019/02/flutter_banner.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );


  }

  //metodo para crear un checkbox
  Widget _crearCheckBox() {

    //primera forma de crear el checkbox
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: ( valor ){
    //     setState(() {
    //       _bloquearCheck = valor;
    //     });
    //   },
    // );

    //segunda forma y mas recomendada para crear un checkbox con texto
    return CheckboxListTile(
      title: Text('Bloquear el Slider'),
      value: _bloquearCheck,
       onChanged: ( valor ){
        setState(() {
          _bloquearCheck = valor;
        });
      },

    );

  }

  //creando un switch
  Widget _crearSwitch() {

    return SwitchListTile(
      title: Text('Bloquear el Slider'),
      value: _bloquearCheck,
       onChanged: ( valor ){
        setState(() {
          _bloquearCheck = valor;
        });
      },

    );

  }
}