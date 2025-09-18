import 'package:adri_app/presentacion/bloc/bloc_bloc.dart';
import 'package:adri_app/presentacion/bloc/bloc_state.dart';
import 'package:adri_app/presentacion/vista/cargando.dart';
import 'package:adri_app/presentacion/vista/error.dart';
import 'package:adri_app/presentacion/vista/inicio.dart';
import 'package:adri_app/presentacion/vista/principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state is Correcto) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Home()),
              );
            }
          },
          builder: (context, state) {
            if (state is Cargando) {
              return const Loading();
            } else if (state is Error) {
              return Failure();
            } else {
              return Initial();
            }
          },
        ),
      ),
    );
  }
}
