import 'package:dartz/dartz.dart';
import 'package:tdd_architecture/layers/domain/repositories/salvar_carro_favorito_repository.dart';

import '../../entities/carro_entity.dart';
import 'salvar_carro_favorito_usecase.dart';

class SalvarCarroUseCaseImp implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroUseCaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();
    return await _salvarCarroFavoritoRepository(carroEntity);
  }
}
