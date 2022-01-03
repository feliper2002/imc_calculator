import 'package:flutter_test/flutter_test.dart';
import 'package:imc_calculator/home/controller/imc_controller.dart';
import 'package:imc_calculator/home/model/calculate_imc.dart';

void main() {
  final usecase = CalculateIMCImpl();
  final controller = IMCController(usecase);

  test('Should return a `double` which represents the IMC calculus result.',
      () {
    String height = '180';
    String mass = '62';

    controller.setHeight(height);
    controller.setMass(mass);
    controller.calculateIMCResult();

    expect(controller.result, isA<double>());
    expect(controller.result, isPositive);
    expect(controller.result, isNonZero);
    expect(controller.result, isNotNull);
  });
}
