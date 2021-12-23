import 'package:flutter/material.dart';
import 'package:imc_calculator/home/controller/imc_controller.dart';
import 'package:imc_calculator/home/model/calculate_imc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = IMCController(CalculateIMCImpl());

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
