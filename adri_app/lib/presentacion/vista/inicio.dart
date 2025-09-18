import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    void register() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registrado: ${emailController.text}')),
      );
      emailController.clear();
      passwordController.clear();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Registro')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
             const SizedBox(height: 20),
            ElevatedButton(
              onPressed: register,
              child: const Text('Empezar'),
            ),
          ],
        ),
      ),
    );
  }
}
