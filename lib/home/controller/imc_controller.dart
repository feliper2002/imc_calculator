import 'package:imc_calculator/home/model/calculate_imc.dart';

class IMCController {
  final CalculateIMC _calculateIMCUsecase;

  IMCController(this._calculateIMCUsecase);

  String? mass;
  String? height;
  double result = 0;

  bool changedResult = false;

  setMass(String value) {
    mass = value;
  }

  setHeight(String value) {
    height = value;
  }

  setResult(double value) {
    changedResult = true;
    result = value;
  }

  void calculateIMCResult() {
    double calculus = _calculateIMCUsecase.calculate(
        double.parse(height!), double.parse(mass!));
    setResult(calculus);
  }

  bool validateForm() {
    return height != null && mass != null;
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
