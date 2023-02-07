import 'package:tdd_architecture/layers/data/datasources/get_carros_por_cor_datasource.dart';

import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';
import '../dtos/carro_dto.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _carrosPorCorDataSource;

  GetCarrosPorCorRepositoryImp(this._carrosPorCorDataSource);


  @override
  CarroEntity call(String cor) {
    return _carrosPorCorDataSource(cor);
  }
}
