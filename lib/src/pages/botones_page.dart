
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar:  _bottomNavigationBar(context),
    );
  }

  Widget _fondoApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ])),
    );
    final cajarosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(85.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(250, 98, 200, 1.0),
              Color.fromRGBO(250, 146, 178, 1.0)
            ]
          )
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient, 
        Positioned(
          top: -90,
          child: cajarosa
        )
        ],
    );
  }
  
  Widget _titulos(){
    return SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Classify transaction', style:TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 10.0,),
                Text('Classify this transaction into a particular category', style:TextStyle(color: Colors.white, fontSize: 18.0)),
              ],
            ),
          ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))
      ),
      child:  BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.calendar_today, size: 30.0,),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.bubble_chart, size : 30.0,),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.supervised_user_circle, size: 30.0,),
            title: Container(),
          ),
        ],
      ),
    );
  }
  
  Widget _botonesRedondeados(){
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.amber, Icons.access_time, 'Time'),
            _crearBotonRedondeado(Colors.blueGrey, Icons.accessible, 'Accessible'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.redAccent, Icons.cloud, 'Forward'),
            _crearBotonRedondeado(Colors.pinkAccent, Icons.add_a_photo, 'Photo'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.lime, Icons.add_alarm, 'Alarm'),
            _crearBotonRedondeado(Colors.lightBlueAccent, Icons.favorite, 'Favorite')
          ]
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto){
    return BackdropFilter(
      filter:ImageFilter.blur(
        sigmaX: 0.0, sigmaY: 0.0
      ),
      child: Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: 5.0),
            CircleAvatar(
              backgroundColor: color,
              radius: 35.0,
              child: Icon(icono, color: Colors.white, size:30.0),
            ),
            Text(texto, style: TextStyle(color: color)),
            SizedBox(height: 5.0)
          ],
        ),
      ),
    );
  }
}
