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

  void _toggleFrench() {
    setState(() {
      _french = true;
      _english = false;
    });
  }

  void _toggleEnglish() {
    setState(() {
      _french = false;
      _english = true;
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
                title: Text(
                  "Français",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: appBlack,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: InkWell(
                  onTap: _toggleFrench,
                  child: Container(
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
              ListTile(
                title: Text(
                  "Anglais",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: appBlack,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: InkWell(
                  onTap: _toggleEnglish,
                  child: Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
