import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tdd_architecture/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:tdd_architecture/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:tdd_architecture/layers/data/repositories/savar_carro_favorito_repository_imp.dart';
import 'package:tdd_architecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:tdd_architecture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:tdd_architecture/layers/presentation/controllers/carro_controller.dart';

import '../../../domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';

class CarroPage extends StatelessWidget {
  CarroPage({super.key});

  CarroController controller = CarroController(
      GetCarrosPorCorUseCaseImp(
          GetCarrosPorCorRepositoryImp(
            GetCarrosPorCorLocalDataSourceImp()
            )
          ),
      SalvarCarroUseCaseImp(
        SalvarCarroFavoritoRepositoryImp()
      )
    );

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
