import 'package:imc_calculator/home/model/calculate_imc.dart';

class IMCController {
  final CalculateIMC _calculateIMCUsecase;

  IMCController(this._calculateIMCUsecase);

  double? mass;
  double? height;

  setMass(double value) {
    mass = value;
  }

  setHeight(double value) {
    height = value;
  }

  String imcResult(double height, double mass) =>
      _calculateIMCUsecase.calculate(height, mass);
}
