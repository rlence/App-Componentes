import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _fecha = '';

  TextEditingController _inputFiledDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha( context ),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {

    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text('Letras ${ _nombre.length }'),
        labelText: 'Nombre', //este es el nombre que va en la parte superiror del input
        hintText: 'Nombre de la persona', //este es el plasholder en html como texto de fondo
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility), //icono al final del input
        icon: Icon(Icons.account_circle), //icono al prinpicio y al lateral del input
      ),
      onChanged: (valor){
        
        setState(() {
          _nombre = valor;
        });
      },
    );

  }


  Widget  _crearEmail(){

    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: 'Email', //este es el nombre que va en la parte superiror del input
        hintText: 'Tu correo electronico', //este es el plasholder en html como texto de fondo
        helperText: 'Solo es el Email',
        suffixIcon: Icon(Icons.alternate_email), //icono al final del input
        icon: Icon(Icons.email), //icono al prinpicio y al lateral del input
      ),
      onChanged: (valor){
        
        setState(() {
          _email = valor;
        });
      },
    );

  }


  Widget _crearPassword(){

    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: 'Password', //este es el nombre que va en la parte superiror del input
        hintText: 'Tu contraseña', //este es el plasholder en html como texto de fondo
        helperText: 'Solo es el clave',
        suffixIcon: Icon(Icons.lock_open), //icono al final del input
        icon: Icon(Icons.lock), //icono al prinpicio y al lateral del input
      ),
      onChanged: (valor){
        
      
      },
    );

  }

  Widget _crearFecha( BuildContext context ){

    return TextField(
      controller: _inputFiledDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: 'Fecha', //este es el nombre que va en la parte superiror del input
        hintText: 'Fecha de namiento', //este es el plasholder en html como texto de fondo
        suffixIcon: Icon(Icons.perm_contact_calendar), //icono al final del input
        icon: Icon(Icons.calendar_today), //icono al prinpicio y al lateral del input
      ),
      onTap: (){

        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate( context );

      },
    );

  }

  _selectDate( BuildContext context ) async {

    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(), //dia de inicio
      firstDate: new DateTime(2018), //año de comienzo
      lastDate: new DateTime(2025), //año de finalizacion
      locale: Locale('es', 'ES')
    );

    if( picked != null ){
      setState(() {
        
        _fecha = picked.toString();
        _inputFiledDateController.text = _fecha;
      });
    }

  }





  Widget _crearPersona(){
    return ListTile(
      title: Text('El nombre es: $_nombre'),
      subtitle: Text('El email es: $_email'),
    );
  }


}