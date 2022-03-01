import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubitulo = TextStyle(fontSize: 18.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          
          _crearImagen(), 
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
      )
    );
  }
  Widget _crearImagen(){
    return Image(
    image: NetworkImage('https://cdn.pixabay.com/photo/2019/12/11/21/18/landscape-4689328_960_720.jpg'),
    );
  }

  Widget _crearTitulo(){
    return Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Row(
            children:  <Widget>[

              Expanded(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  <Widget>[
                    Text('Campo de flores rojas', style: estiloTitulo),
                    SizedBox(height: 7.0),
                    Text('Cultivo de flores en Europa', style: estiloSubitulo),        
                  ],
                 ),
              ),
              Icon(Icons.star, color: Colors.red, size: 30.0),
              Text('41', style: TextStyle(fontSize: 20.0))
            ],
          ),
    );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto){
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.pinkAccent, size: 40.0),
        SizedBox( height: 5.0 ),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.pinkAccent))
      ],
    );
  }

  Widget _crearTexto(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Dolor ipsum consectetur laboris nisi irure cillum ex et. Incididunt aute ex proident pariatur. Laborum cillum ea sit cupidatat ex cillum in aute anim sint veniam veniam. Consectetur consectetur incididunt deserunt Lorem adipisicing dolore ex ad enim ut aute id esse. Cupidatat deserunt minim enim dolor occaecat aliquip et et tempor exercitation ullamco veniam mollit. Occaecat qui elit ex aliquip adipisicing ut mollit ea minim. Id occaecat est veniam esse officia exercitation consectetur.',
        textAlign: TextAlign.justify,
      ),
    );
  }

}