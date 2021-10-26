import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  AppEntradaTexto createState() => AppEntradaTexto();
}

class AppEntradaTexto extends State<MyApp> {
  TextEditingController caixaTexto = TextEditingController();
  String nomeCompleto = "";

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter - Entrada de texto'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: caixaTexto,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nome completo',
                  ),
                  onChanged: (text) {
                    setState(() {
                      nomeCompleto = text;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Text(nomeCompleto),
              )
            ],
          ),
        ),
      ),
    );
  }
}
