
import 'package:tdd_architecture/layers/data/dtos/carro_dto.dart';

import '../get_carros_por_cor_datasource.dart';

class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource{

   var jsonVermelho = {
      "placa": "ABC123",
      "quantidadeDePortas": 4,
      "valorFinal": 5000.00
    };

     var jsonAny = {
      "placa": "qwe321",
      "quantidadeDePortas": 2,
      "valorFinal": 2000.00
    };

   

  @override
  CarroDto call(String cor) {
      if (cor.contains('vermelho')) {
      return CarroDto.fromJson(jsonVermelho);
    }

    return CarroDto.fromJson(jsonAny);
  }
}