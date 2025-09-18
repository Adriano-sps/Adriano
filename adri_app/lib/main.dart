import 'package:adri_app/presentacion/vista/cargando.dart';
import 'package:adri_app/presentacion/vista/error.dart';
import 'package:adri_app/presentacion/vista/inicio.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Register()
    );
  }
}
