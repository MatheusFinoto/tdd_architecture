import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:tdd_architecture/layers/presentation/controllers/carro_controller.dart';

class CarroPage extends StatelessWidget {
  CarroPage({super.key});

  var controller = GetIt.I.get<CarroController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
