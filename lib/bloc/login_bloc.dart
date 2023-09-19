import 'package:flutter/material.dart';

class LoginBloc extends ChangeNotifier {
  int contador = 0;

  void onEventIncrement() {
    contador++;
    notifyListeners();
  }

  void onEventDecrement() {
    contador--;
    notifyListeners();
  }
}
