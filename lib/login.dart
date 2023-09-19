import 'package:flutter/material.dart';
import 'package:flutter_bloc_example1/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: _buidBody(),
        ),
      ),
    );
  }

  Widget _buidBody() {
    TextEditingController ctrl = TextEditingController();
    TextEditingController ctr2 = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 20),
        TextFormField(
          keyboardType: TextInputType.text,
          controller: ctrl,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Nombre usuario",
            fillColor: Colors.transparent,
            filled: true,
            isDense: true,
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          keyboardType: TextInputType.text,
          controller: ctr2,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Contraseña",
            fillColor: Colors.transparent,
            filled: true,
            isDense: true,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(onPressed: fntLogin, child: const Text('Ingresar'))
      ],
    );
  }

  fntLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Home()),
    );
  }
}
