import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final _estilo = TextStyle(fontSize: 30.0);
  var _cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: false,
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            'Contador',
            style: _estilo,
          ),
          Text(
            '$_cnt',
            style: _estilo,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _cnt++;
          print("Hola $_cnt");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
