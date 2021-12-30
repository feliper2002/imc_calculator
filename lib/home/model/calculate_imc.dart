abstract class CalculateIMC {
  double calculate(double height, double mass);
}

class CalculateIMCImpl implements CalculateIMC {
  @override
  double calculate(double height, double mass) {
    double calculus;

    try {
      assert(height > 0 && mass > 0);
      calculus = (mass / (height * height));
    } catch (e) {
      throw AssertionError("A altura e a massa devem ser valores positivos!");
    }

    return calculus;
  }
}
