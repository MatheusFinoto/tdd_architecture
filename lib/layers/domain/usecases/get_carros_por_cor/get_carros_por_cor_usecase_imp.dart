import '../../entities/carro_entity.dart';
import 'get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'ABC123', qtdPortas: 4, valor: 50000.00);
    }

    return CarroEntity(placa: 'QWE123', qtdPortas: 2, valor: 20000.00);
  }
}
