import 'package:flutter/material.dart';
import 'package:tdd_architecture/core/inject/inject.dart';
import 'package:tdd_architecture/layers/presentation/ui/pages/carro_page.dart';

void main() {
  Inject.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: ThemeData(), home: CarroPage());
  }
}
