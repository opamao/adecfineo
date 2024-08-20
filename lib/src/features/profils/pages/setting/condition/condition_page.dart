import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ConditionPage extends StatefulWidget {
  const ConditionPage({super.key});

  @override
  State<ConditionPage> createState() => _ConditionPageState();
}

class _ConditionPageState extends State<ConditionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Condition d'utilisation"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Container(),
        ),
      ),
    );
  }
}
