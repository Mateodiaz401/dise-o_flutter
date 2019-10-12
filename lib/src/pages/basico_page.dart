import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo =  TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo =  TextStyle(fontSize: 15.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
        ),
      )
    );
  }

  Widget _crearImagen(){
    return  Container(
      width: double.infinity,
      child: Image(
              image: NetworkImage('https://st.motortrendenespanol.com/uploads/sites/11/2019/01/2020-Ford-Mustang-Shelby-G500-6.jpg'),
              height: 300.0,
              fit: BoxFit.cover,
            ),
    );
  }
  Widget _crearTitulo(){
    return  SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('El pallaso Dibolico', style: estiloTitulo),
                        SizedBox(height: 10.0),
                        Text('Un pallaso que espanta', style: estiloSubTitulo),
                      ],
                    ),
                  ),
                  Icon(Icons.star,  color: Colors.red, size: 30.0,),
                  Text('41', style: TextStyle(fontSize: 20.0))
                ],
              ),
            ),
    );
  }
  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(  Icons.near_me, 'Route'),
        _accion( Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto){
    return  Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue, size: 30.0),
            SizedBox(height: 8.0,),
            Text(texto, style: TextStyle( fontSize: 15.0, color: Colors.blue)),
          ],
        );
  }
  Widget _crearTexto(){
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          'Pariatur veniam sunt incididunt esse velit pariatur tempor excepteur eiusmod sunt sint mollit elit. Non ut esse incididunt tempor ipsum irure aliqua nostrud elit sit duis ad pariatur id. Excepteur tempor anim eiusmod ullamco officia deserunt veniam anim id dolor non irure qui. Nisi eu ut ipsum irure cupidatat et nisi irure dolore do esse voluptate fugiat consequat. Labore est dolor laboris nostrud dolore commodo amet do. Adipisicing sint aliqua ipsum consectetur consequat laborum esse est eiusmod est ex id et minim.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}