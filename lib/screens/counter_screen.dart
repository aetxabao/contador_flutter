import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final _estilo = TextStyle(fontSize: 30.0);
  var _cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
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
      floatingActionButton: _fab(),
    );
  }

  Widget _fab() {
    return Row(
      children: [
        SizedBox(
          width: 25.0,
        ),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _cnt = 0;
              print("Reseteo $_cnt");
            });
          },
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(
          child: SizedBox(
            width: 5.0,
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _cnt--;
              print("Decremento $_cnt");
            });
          },
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _cnt++;
              print("Incremento $_cnt");
            });
          },
          child: Icon(Icons.add),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }
}
