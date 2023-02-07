import 'package:tdd_architecture/layers/data/dtos/carro_dto.dart';

abstract class GetCarrosPorCorDataSource {
  CarroDto call(String cor);
}
