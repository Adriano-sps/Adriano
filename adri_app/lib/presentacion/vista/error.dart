import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  const Error({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error, color: Colors.red, size: 80),
            SizedBox(height: 20),
            Text(
              "Ocurrió un error",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("Por favor, inténtalo de nuevo."),
          ],
        ),
      ),
    );
  }
}