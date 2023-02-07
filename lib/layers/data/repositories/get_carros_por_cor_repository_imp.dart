import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';
import '../dtos/carro_dto.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    var json = {
      "placa": "ABC123",
      "quantidadeDePortas": 2,
      "valorFinal": 1000.00
    };

    return CarroDto.fromJson(json);
  }
}