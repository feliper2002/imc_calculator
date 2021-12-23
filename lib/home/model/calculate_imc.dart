abstract class CalculateIMC {
  String calculate(double height, double mass);
}

class CalculateIMCImpl implements CalculateIMC {
  @override
  String calculate(double height, double mass) {
    Map<String, dynamic> errors = {};

    if (height <= 0 || mass <= 0) {
      errors.putIfAbsent("InvalidNumberError", () => null);
    }

    double calculus = (mass / (height * height));

    if (calculus < 18.5) {
      return "Magreza - Grau: 0";
    } else if (calculus >= 18.5 && calculus <= 24.9) {
      return "Normal - Grau: 0";
    } else if (calculus >= 25 && calculus < 29.9) {
      return "Sobrepeso - Grau: I";
    } else if (calculus >= 30 && calculus < 39.9) {
      return "Obesidade - Grau: II";
    } else {
      return "Obesidade grave - Grau: III";
    }
  }
}
