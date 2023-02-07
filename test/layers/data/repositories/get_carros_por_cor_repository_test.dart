import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_architecture/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:tdd_architecture/layers/domain/repositories/get_carros_por_cor_repository.dart';



void main() {
  GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImp();

  test('Devolva um carro independente da cor', () {
    var result = repository('qualquer');
    expect(result, isNotNull);
  });
}
