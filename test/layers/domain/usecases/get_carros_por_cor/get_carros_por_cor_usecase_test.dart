import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_architecture/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:tdd_architecture/layers/data/repositories/get_carros_por_cor_repository_imp.dart';

import 'package:tdd_architecture/layers/domain/entities/carro_entity.dart';
import 'package:tdd_architecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:tdd_architecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';

void main() {
  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));
    var resultado = useCase.call('azul');

    late CarroEntity expected;

    resultado.fold((l) => null, (r) => expected = r);

    expect(expected, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro de 4 portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));
    var resultado = useCase.call('vermelho');

    late CarroEntity expected;

    resultado.fold((l) => null, (r) => expected = r);

    expect(expected.qtdPortas, 4);
  });

  test('Deve retornar um carro de 2 portas quando qualquer cor exceto vermelho',
      () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));
    var resultado = useCase.call('verde');

    late CarroEntity expected;

    resultado.fold((l) => null, (r) => expected = r);

    expect(expected.qtdPortas, 2);
  });
}
