import 'package:flutter/material.dart';

class RechargeCartePage extends StatefulWidget {
  const RechargeCartePage({super.key});

  @override
  State<RechargeCartePage> createState() => _RechargeCartePageState();
}

class _RechargeCartePageState extends State<RechargeCartePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rechargement de carte"),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
