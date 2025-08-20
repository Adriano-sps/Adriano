import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final double saldo = 250.75; // Puedes cambiar el valor del saldo aquí

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi App'),
          backgroundColor: const Color.fromARGB(255, 53, 1, 243),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contenido Principal',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'Saldo: \$${saldo.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700],
                ),
              ),
              SizedBox(height: 30),
              IconButton(
                icon: Icon(Icons.settings, size: 30),
                onPressed: () {
                  // Aquí puedes poner la acción al presionar el botón
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
