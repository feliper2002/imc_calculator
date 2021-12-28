abstract class CalculateIMC {
  double calculate(double height, double mass);
}

class CalculateIMCImpl implements CalculateIMC {
  @override
  double calculate(double height, double mass) {
    Map<String, dynamic> errors = {};

    if (height <= 0 || mass <= 0) {
      errors.putIfAbsent("InvalidNumberError", () => null);
    }

    double calculus = (mass / (height * height));

    return calculus;
  }
}
