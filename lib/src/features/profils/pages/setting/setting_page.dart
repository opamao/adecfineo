import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';

import '../../../../themes/themes.dart';
import '../../../language/language.dart';
import '../../profils.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  "Paramètres",
                  style: TextStyle(
                    color: appBlack,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 26 * 0.14,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        onTap: () => showBarModalBottomSheet(
                          expand: true,
                          context: context,
                          barrierColor: appColor,
                          builder: (context) => const PasswordPage(),
                        ),
                        leading: Image.asset("assets/images/password.png"),
                        title: Text(
                          "Changement de mot de passe",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(2.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        onTap: () => showBarModalBottomSheet(
                          expand: true,
                          context: context,
                          barrierColor: appColor,
                          builder: (context) => const PinPage(),
                        ),
                        leading: Image.asset("assets/images/password.png"),
                        title: Text(
                          "Changement de Pin",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(2.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        onTap: () => showBarModalBottomSheet(
                          expand: true,
                          context: context,
                          barrierColor: appColor,
                          builder: (context) => const ConditionPage(),
                        ),
                        leading: Image.asset("assets/images/condition.png"),
                        title: Text(
                          "Condition d'utilisation",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(2.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        onTap: () => showBarModalBottomSheet(
                          expand: true,
                          context: context,
                          barrierColor: appColor,
                          builder: (context) => const LanguagePage(),
                        ),
                        leading: Image.asset("assets/images/langue.png"),
                        title: Text(
                          "Langues",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(2.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        onTap: () => showBarModalBottomSheet(
                          expand: true,
                          context: context,
                          barrierColor: appColor,
                          builder: (context) => const AproposSettingsPage(),
                        ),
                        leading: Image.asset("assets/images/about.png"),
                        title: Text(
                          "A propos",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
