import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/themes.dart';
import '../../transferts/transaction.dart';

class MenuAutrePage extends StatefulWidget {
  const MenuAutrePage({super.key});

  @override
  State<MenuAutrePage> createState() => _MenuAutrePageState();
}

class _MenuAutrePageState extends State<MenuAutrePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: appWhite,
              child: Image.asset(
                "assets/images/userblue.png",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "YAPI",
                  style: TextStyle(
                    color: appBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 20 * 0.14,
                  ),
                ),
                Text(
                  "N'GUESSAN KOUASSI THEODORE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 20 * 0.14,
                  ),
                ),
                Text(
                  "+2250585831647",
                  style: TextStyle(
                    color: appBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 15 * 0.14,
                  ),
                ),
              ],
            ),
            Gap(5.h),
            Padding(
              padding: EdgeInsets.all(4.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: appGrey,
                      border: Border.all(color: appGreyBorder),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundColor: appWhite,
                        child: Image.asset(
                          "assets/images/compte.png",
                          height: 7.w,
                        ),
                      ),
                      title: Text(
                        "Mes comptes",
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
                      color: appGrey,
                      border: Border.all(color: appGreyBorder),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TransactionPage(),
                          ),
                        );
                      },
                      leading: CircleAvatar(
                        backgroundColor: appWhite,
                        child: Image.asset(
                          "assets/images/transfert.png",
                          height: 7.w,
                        ),
                      ),
                      title: Text(
                        "Transfert",
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
                      color: appGrey,
                      border: Border.all(color: appGreyBorder),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundColor: appWhite,
                        child: Image.asset(
                          "assets/images/credit.png",
                          height: 7.w,
                        ),
                      ),
                      title: Text(
                        "Crédits",
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
                      color: appGrey,
                      border: Border.all(color: appGreyBorder),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundColor: appWhite,
                        child: Image.asset(
                          "assets/images/monetique.png",
                          height: 7.w,
                        ),
                      ),
                      title: Text(
                        "Monétique",
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
                      color: appGrey,
                      border: Border.all(color: appGreyBorder),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundColor: appWhite,
                        child: Image.asset(
                          "assets/images/assurance.png",
                          height: 7.w,
                        ),
                      ),
                      title: Text(
                        "Assurances",
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
                      color: appGrey,
                      border: Border.all(color: appGreyBorder),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundColor: appWhite,
                        child: Image.asset(
                          "assets/images/settings.png",
                          height: 7.w,
                        ),
                      ),
                      title: Text(
                        "Paramètres",
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
                      color: appGrey,
                      border: Border.all(color: appGreyBorder),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundColor: appWhite,
                        child: Image.asset(
                          "assets/images/about.png",
                          height: 7.w,
                        ),
                      ),
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
                  Gap(2.h),
                  Container(
                    decoration: BoxDecoration(
                      color: appGrey,
                      border: Border.all(color: appGreyBorder),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundColor: appWhite,
                        child: Image.asset(
                          "assets/images/signout.png",
                          height: 7.w,
                        ),
                      ),
                      title: Text(
                        "Déconnexion",
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
    );
  }
}
