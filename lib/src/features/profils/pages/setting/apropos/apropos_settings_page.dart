import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AproposSettingsPage extends StatefulWidget {
  const AproposSettingsPage({super.key});

  @override
  State<AproposSettingsPage> createState() => _AproposSettingsPageState();
}

class _AproposSettingsPageState extends State<AproposSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A propos"),
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

