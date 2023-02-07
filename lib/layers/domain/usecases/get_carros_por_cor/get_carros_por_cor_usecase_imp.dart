import 'package:dartz/dartz.dart';
import 'package:tdd_architecture/layers/domain/repositories/get_carros_por_cor_repository.dart';

import '../../entities/carro_entity.dart';
import 'get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  final GetCarrosPorCorRepository _getCarrosPorCorRepository;

  GetCarrosPorCorUseCaseImp(this._getCarrosPorCorRepository);

  @override
  Either<Exception, CarroEntity> call(String cor) {
    return _getCarrosPorCorRepository(cor);
  }
}
