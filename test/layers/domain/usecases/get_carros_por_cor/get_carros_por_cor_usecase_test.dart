import 'package:flutter_test/flutter_test.dart';

import 'package:tdd_architecture/layers/domain/entities/carro_entity.dart';
import 'package:tdd_architecture/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:tdd_architecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:tdd_architecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';

class GetCarrosPorCorImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'ABC123', qtdPortas: 4, valor: 50000.00);
    }

    return CarroEntity(placa: 'QWE123', qtdPortas: 2, valor: 20000.00);
  }
}

void main() {
  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    GetCarrosPorCorUseCase useCase =
        GetCarrosPorCorUseCaseImp(GetCarrosPorCorImp());
    var resultado = useCase.call('azul');

    expect(resultado, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro de 4 portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase =
        GetCarrosPorCorUseCaseImp(GetCarrosPorCorImp());
    var resultado = useCase.call('vermelho');

    expect(resultado.qtdPortas, 4);
  });

  test('Deve retornar um carro de 2 portas quando qualquer cor exceto vermelho',
      () {
    GetCarrosPorCorUseCase useCase =
        GetCarrosPorCorUseCaseImp(GetCarrosPorCorImp());
    var resultado = useCase.call('verde');

    expect(resultado.qtdPortas, 2);
  });
}
