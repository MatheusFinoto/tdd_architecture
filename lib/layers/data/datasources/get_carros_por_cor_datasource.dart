import 'package:dartz/dartz.dart';
import 'package:tdd_architecture/layers/data/dtos/carro_dto.dart';

abstract class GetCarrosPorCorDataSource {
  Either<Exception, CarroDto> call(String cor);
}
