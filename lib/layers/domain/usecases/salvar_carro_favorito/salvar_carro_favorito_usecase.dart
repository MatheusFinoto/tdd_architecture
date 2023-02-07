import 'package:dartz/dartz.dart';
import 'package:tdd_architecture/layers/domain/entities/carro_entity.dart';

abstract class SalvarCarroFavoritoUseCase {
   Future<Either<Exception, bool>> call(CarroEntity carroEntity);
}
