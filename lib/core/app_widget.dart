import 'package:flutter/material.dart';
import 'package:imc_calculator/home/view/home.page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      title: 'IMC Calculator',
    );
  }
}
