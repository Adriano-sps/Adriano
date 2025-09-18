import 'package:flutter/material.dart';

class PageInitial extends StatelessWidget {
  const PageInitial({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Bienvenido',
                  style: TextStyle(
                    fontSize: 36,
                    color: const Color.fromARGB(255, 243, 3, 3),
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 3,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Text('Presionar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
