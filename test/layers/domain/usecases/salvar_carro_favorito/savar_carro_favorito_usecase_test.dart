import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_architecture/layers/domain/entities/carro_entity.dart';
import 'package:tdd_architecture/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:tdd_architecture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:tdd_architecture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}

void main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUseCase useCase = SalvarCarroUseCaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    );

    var carro = CarroEntity(placa: '', qtdPortas: 2, valor: 1);
    var result = await useCase(carro);
    expect(result, true);
  });

  test('Espero que nãp salve o carro quando o valor for menor ou igual a zero',
      () async {
    SalvarCarroFavoritoUseCase useCase = SalvarCarroUseCaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    );

    var carro = CarroEntity(placa: '', qtdPortas: 2, valor: 0);
    var result = await useCase(carro);
    expect(result, false);
  });
}
