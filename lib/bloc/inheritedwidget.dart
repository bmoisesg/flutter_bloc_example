import 'package:flutter/material.dart';
import 'package:flutter_bloc_example1/bloc/login_bloc.dart';

class MyInheriteWidget extends InheritedWidget {
  final Widget child;
  final LoginBloc loginBloc;

  const MyInheriteWidget({
    required this.child,
    required this.loginBloc,
    super.key,
  }) : super(child: child);

  static MyInheriteWidget? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}
