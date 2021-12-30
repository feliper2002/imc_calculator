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
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: const [
          Text('IMC Calculator'),
          SizedBox(height: 50),
          CustomField(
            labelText: 'Type your height',
            labelStyle: TextStyle(fontSize: 18, color: Colors.white),
            hintStyle: TextStyle(fontSize: 18, color: Colors.white),
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          CustomField(
            labelText: 'Type your mass',
            labelStyle: TextStyle(fontSize: 18, color: Colors.white),
            hintStyle: TextStyle(fontSize: 18, color: Colors.white),
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
