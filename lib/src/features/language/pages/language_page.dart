import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/themes.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  bool _french = true;
  bool _english = false;
  bool _espagne = false;
  bool _allemand = false;

  void _toggleFrench() {
    setState(() {
      _french = true;
      _english = false;
      _espagne = false;
      _allemand = false;
    });
  }

  void _toggleEnglish() {
    setState(() {
      _french = false;
      _english = true;
      _espagne = false;
      _allemand = false;
    });
  }

  void _toggleEspagne() {
    setState(() {
      _french = false;
      _english = false;
      _espagne = true;
      _allemand = false;
    });
  }

  void _toggleAllemand() {
    setState(() {
      _french = false;
      _english = false;
      _espagne = false;
      _allemand = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Langue"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: ListView(
            children: [
              ListTile(
                onTap: _toggleFrench,
                leading: Image.asset("assets/images/france.png"),
                title: Text(
                  "Français",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: appBlack,
                    fontWeight: FontWeight.normal,
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
              ListTile(
                onTap: _toggleEnglish,
                leading: Image.asset("assets/images/anglais.png"),
                title: Text(
                  "Anglais",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: appBlack,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _english ? appColor : appGrey.withOpacity(.2),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(1.w),
                    child: _english
                        ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: appWhite,
                          )
                        : Icon(
                            Icons.check_box_outline_blank,
                            size: 30.0,
                            color: _english ? appColor : Colors.transparent,
                          ),
                  ),
                ),
              ),
              ListTile(
                onTap: _toggleEspagne,
                leading: Image.asset("assets/images/espagne.png"),
                title: Text(
                  "Español",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: appBlack,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _espagne ? appColor : appGrey.withOpacity(.2),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(1.w),
                    child: _espagne
                        ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: appWhite,
                          )
                        : Icon(
                            Icons.check_box_outline_blank,
                            size: 30.0,
                            color: _espagne ? appColor : Colors.transparent,
                          ),
                  ),
                ),
              ),
              ListTile(
                onTap: _toggleAllemand,
                leading: Image.asset("assets/images/allemagne.png"),
                title: Text(
                  "Allemand",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: appBlack,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _allemand ? appColor : appGrey.withOpacity(.2),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(1.w),
                    child: _allemand
                        ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: appWhite,
                          )
                        : Icon(
                            Icons.check_box_outline_blank,
                            size: 30.0,
                            color: _allemand ? appColor : Colors.transparent,
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
