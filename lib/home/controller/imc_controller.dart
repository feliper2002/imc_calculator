import 'package:imc_calculator/home/model/calculate_imc.dart';

class IMCController {
  final CalculateIMC _calculateIMCUsecase;

  IMCController(this._calculateIMCUsecase);

  double? mass;
  double? height;
  double result = 0;

  setMass(double value) {
    mass = value;
  }

  setResult(double value) {
    result = value;
  }

  setHeight(double value) {
    height = value;
  }

  void calculateIMCResult(double height, double mass) {
    double calculus = _calculateIMCUsecase.calculate(height, mass);
    setResult(calculus);
  }

  String get imcCategory {
    if (result < 18.5) {
      return "Magreza - Grau: 0";
    } else if (result >= 18.5 && result <= 24.9) {
      return "Normal - Grau: 0";
    } else if (result >= 25 && result < 29.9) {
      return "Sobrepeso - Grau: I";
    } else if (result >= 30 && result < 39.9) {
      return "Obesidade - Grau: II";
    } else {
      return "Obesidade grave - Grau: III";
    }
  }
}
