import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/themes.dart';

class MonetiquePage extends StatefulWidget {
  const MonetiquePage({super.key});

  @override
  State<MonetiquePage> createState() => _MonetiquePageState();
}

class _MonetiquePageState extends State<MonetiquePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Monétique",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 26 * 0.14,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 169,
                                height: 125,
                                decoration: BoxDecoration(
                                  color: appWhite,
                                  border: Border.all(color: appGreyBorder),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset(
                                  "assets/images/demande-carte.png",
                                  width: 70,
                                  height: 70,
                                ),
                              ),
                            ),
                            Text(
                              "Demande de carte",
                              style: TextStyle(
                                color: appBlack,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 15 * 0.03,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 169,
                                height: 125,
                                decoration: BoxDecoration(
                                  color: appWhite,
                                  border: Border.all(color: appGreyBorder),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset(
                                  "assets/images/carte-bleu.png",
                                  width: 70,
                                  height: 70,
                                ),
                              ),
                            ),
                            Text(
                              "Activer carte",
                              style: TextStyle(
                                color: appBlack,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 15 * 0.03,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(4.h),
                    Text(
                      "Dernières transactions",
                      style: TextStyle(
                        color: appBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 14 * 0.14,
                      ),
                    ),
                    Gap(2.h),
                    Expanded(
                      child: ListView(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: appWhite,
                              border: Border.all(color: appGreyBorder),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: appWhite,
                                child: Image.asset("assets/images/orange.png"),
                              ),
                              title: Text(
                                "Orange",
                                style: TextStyle(
                                  color: appBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  letterSpacing: 12 * 0.03,
                                ),
                              ),
                              subtitle: Text(
                                "Dépôt",
                                style: TextStyle(
                                  color: appBlack,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  letterSpacing: 12 * 0.03,
                                ),
                              ),
                              trailing: Text(
                                "+15 000 F.CFA",
                                style: TextStyle(
                                  color: appColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  letterSpacing: 12 * 0.03,
                                ),
                              ),
                            ),
                          ),
                          Gap(1.h),
                          Container(
                            decoration: BoxDecoration(
                              color: appWhite,
                              border: Border.all(color: appGreyBorder),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: appWhite,
                                child: Image.asset("assets/images/moov.png"),
                              ),
                              title: Text(
                                "Moov",
                                style: TextStyle(
                                  color: appBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  letterSpacing: 12 * 0.03,
                                ),
                              ),
                              subtitle: Text(
                                "Dépôt",
                                style: TextStyle(
                                  color: appBlack,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  letterSpacing: 12 * 0.03,
                                ),
                              ),
                              trailing: Text(
                                "+15 000 F.CFA",
                                style: TextStyle(
                                  color: appColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  letterSpacing: 12 * 0.03,
                                ),
                              ),
                            ),
                          ),
                          Gap(1.h),
                          Container(
                            decoration: BoxDecoration(
                              color: appWhite,
                              border: Border.all(color: appGreyBorder),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: appWhite,
                                child: Image.asset("assets/images/mtn.png"),
                              ),
                              title: Text(
                                "MTN",
                                style: TextStyle(
                                  color: appBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  letterSpacing: 12 * 0.03,
                                ),
                              ),
                              subtitle: Text(
                                "Dépôt",
                                style: TextStyle(
                                  color: appBlack,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  letterSpacing: 12 * 0.03,
                                ),
                              ),
                              trailing: Text(
                                "+15 000 F.CFA",
                                style: TextStyle(
                                  color: appColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  letterSpacing: 12 * 0.03,
                                ),
                              ),
                            ),
                          ),
                          Gap(1.h),
                          Container(
                            decoration: BoxDecoration(
                              color: appWhite,
                              border: Border.all(color: appGreyBorder),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: appWhite,
                                child: Image.asset("assets/images/wave.png"),
                              ),
                              title: Text(
                                "Wave",
                                style: TextStyle(
                                  color: appBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  letterSpacing: 12 * 0.03,
                                ),
                              ),
                              subtitle: Text(
                                "Dépôt",
                                style: TextStyle(
                                  color: appBlack,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  letterSpacing: 12 * 0.03,
                                ),
                              ),
                              trailing: Text(
                                "+15 000 F.CFA",
                                style: TextStyle(
                                  color: appColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
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
            ],
          ),
        ),
      ),
    );
  }
}
