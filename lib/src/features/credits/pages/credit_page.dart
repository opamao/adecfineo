import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/themes.dart';

class CreditPage extends StatefulWidget {
  const CreditPage({super.key});

  @override
  State<CreditPage> createState() => _CreditPageState();
}

class _CreditPageState extends State<CreditPage> {
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
                child: Text(
                  "Crédits",
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
                        onTap: () {},
                        leading: Image.asset("assets/images/simulateur.png"),
                        title: Text(
                          "Simulateur de crédit",
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
                        onTap: () {},
                        leading: Image.asset("assets/images/situation.png"),
                        title: Text(
                          "Situation des crédits",
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
                        onTap: () {},
                        leading: Image.asset("assets/images/remboursement.png"),
                        title: Text(
                          "Situation des remboursements",
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
                        onTap: () {},
                        leading: Image.asset("assets/images/tableau.png"),
                        title: Text(
                          "Tableau d'amortissement",
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
