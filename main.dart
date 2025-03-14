import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador Personalizado',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ContadorScreen(),
    );
  }
}

class ContadorScreen extends StatefulWidget {
  @override
  _ContadorScreenState createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _decrementar() {
    setState(() {
      _contador--;
    });
  }

  void _multiplicar() {
    setState(() {
      _contador *= 2;
    });
  }

  void _dividir() {
    setState(() {
      _contador ~/= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador Personalizado'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Valor del contador:',
              style: TextStyle(fontSize: 20, color: Colors.deepPurple),
            ),
            Text(
              '$_contador',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _incrementar,
                  tooltip: 'Sumar',
                  child: Icon(Icons.add),
                  backgroundColor: Colors.green,
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: _decrementar,
                  tooltip: 'Restar',
                  child: Icon(Icons.remove),
                  backgroundColor: Colors.red,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _multiplicar,
                  tooltip: 'Multiplicar',
                  child: Icon(Icons.close),
                  backgroundColor: Colors.orange,
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: _dividir,
                  tooltip: 'Dividir',
                  child: Icon(Icons.percent),
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
