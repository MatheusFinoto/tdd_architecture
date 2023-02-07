import 'package:tdd_architecture/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  String placa;
  int quantidadePortas;
  double valorFinal;

  CarroDto(
      {required this.placa,
      required this.quantidadePortas,
      required this.valorFinal})
      : super(placa: placa, qtdPortas: quantidadePortas, valor: valorFinal);

  Map toJson() {
    return {
      'placa': placa,
      'qtdPortas': quantidadePortas,
      'valorFinal': valorFinal
    };
  }

  static CarroDto fromJson(Map map) {
    return CarroDto(
        placa: map['placa'],
        quantidadePortas: map['quantidadeDePortas'],
        valorFinal: map['valorFinal']);
  }
}
