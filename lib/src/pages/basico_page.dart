import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubitulo = TextStyle(fontSize: 18.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(
            image: NetworkImage('https://cdn.pixabay.com/photo/2019/12/11/21/18/landscape-4689328_960_720.jpg'),
          ),

          Container(
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
          )
        ],
      )
    );
  }
}