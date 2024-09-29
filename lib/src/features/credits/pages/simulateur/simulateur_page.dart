import 'package:flutter/material.dart';

import '../../../../themes/themes.dart';

class SimulateurPage extends StatefulWidget {
  const SimulateurPage({super.key});

  @override
  State<SimulateurPage> createState() => _SimulateurPageState();
}

class _SimulateurPageState extends State<SimulateurPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Simulateur de crédit",
          style: TextStyle(
            color: appBlack,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            letterSpacing: 18 * 0.14,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
