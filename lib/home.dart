import 'package:flutter/material.dart';
import 'package:flutter_bloc_example1/bloc/inheritedwidget.dart';
import 'package:flutter_bloc_example1/bloc/login_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var bloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return MyInheriteWidget(
      loginBloc: bloc,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 20),
        const Text(
          'Contador',
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 50),
        Container(
          color: Theme.of(context).colorScheme.inversePrimary,
          child: Center(
            child: AnimatedBuilder(
              animation: bloc,
              builder: (context, _) {
                return Text(
                  bloc.contador.toString(),
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 50),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: bloc.onEventIncrement,
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: bloc.onEventDecrement,
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
