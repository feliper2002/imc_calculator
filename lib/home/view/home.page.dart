import 'package:flutter/material.dart';
import 'package:imc_calculator/home/controller/imc_controller.dart';
import 'package:imc_calculator/home/model/calculate_imc.dart';
import 'package:imc_calculator/home/view/widgets/custom_field.dart';
import 'package:imc_calculator/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = IMCController(CalculateIMCImpl());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.bgGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'IMC Calculator',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 50),
            CustomField(
              labelText: 'Type your height (cm)',
              labelStyle: const TextStyle(fontSize: 18, color: Colors.white),
              hintStyle: const TextStyle(fontSize: 18, color: Colors.white),
              maxLength: 3,
              style: const TextStyle(fontSize: 18, color: Colors.white),
              onChanged: (value) {
                setState(() {
                  controller.setHeight(value!);
                });
              },
            ),
            const SizedBox(height: 30),
            CustomField(
              labelText: 'Type your mass (Kg)',
              labelStyle: const TextStyle(fontSize: 18, color: Colors.white),
              hintStyle: const TextStyle(fontSize: 18, color: Colors.white),
              style: const TextStyle(fontSize: 18, color: Colors.white),
              onChanged: (value) {
                controller.setMass(value!);
              },
            ),
            const SizedBox(height: 50),
            TextButton(
              onPressed: controller.validateForm()
                  ? () {
                      setState(() {
                        controller.calculateIMCResult();
                      });
                    }
                  : null,
              child: const Text('Calculate',
                  style: TextStyle(color: Colors.black)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
            const SizedBox(height: 50),
            Visibility(
              visible: controller.changedResult,
              child: Text(
                '${controller.result.toStringAsFixed(2)}\n${controller.imcCategory}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
