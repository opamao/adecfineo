import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../themes/themes.dart';

class CompteProfilPage extends StatefulWidget {
  const CompteProfilPage({super.key});

  @override
  State<CompteProfilPage> createState() => _CompteProfilPageState();
}

class _CompteProfilPageState extends State<CompteProfilPage> {
  bool _french = true;

  void _toggleFrench() {
    setState(() {
      _french = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choix du compte principal"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: appWhite,
                  border: Border.all(color: appGreyBorder),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  onTap: _toggleFrench,
                  title: Text(
                    "Compte epargne classique doni doni",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: appBlack,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _french ? appColor : appGrey.withOpacity(.2),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(1.w),
                      child: _french
                          ? Icon(
                        Icons.check,
                        size: 30.0,
                        color: appWhite,
                      )
                          : Icon(
                        Icons.check_box_outline_blank,
                        size: 30.0,
                        color: _french ? appColor : Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
