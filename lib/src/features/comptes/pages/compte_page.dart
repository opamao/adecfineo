import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/themes.dart';

class ComptePage extends StatefulWidget {
  const ComptePage({super.key});

  @override
  State<ComptePage> createState() => _ComptePageState();
}

class _ComptePageState extends State<ComptePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Mes comptes",
                style: TextStyle(
                  color: appBlack,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 26 * 0.14,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: appGrey),
                      borderRadius: BorderRadius.circular(3.w),
                    ),
                    child: ListTile(
                      onTap: () {},
                      title: Text(
                        "Consulter solde",
                        style: TextStyle(
                          color: appBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 12 * 0.03,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
