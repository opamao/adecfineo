import 'package:adecfineo/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                color: appColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.w),
                  bottomRight: Radius.circular(10.w),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Changer de compte",
                    style: TextStyle(
                      color: appWhite,
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text(
                      "COMPTE EPARGNE CLASSIQUE DONI DONI",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: appWhite,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(
                      Icons.expand_more_outlined,
                      color: appWhite,
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: appWhite,
                    child: Image.asset("assets/images/userblue.png"),
                  ),
                  Gap(1.w),
                  Text(
                    "YAPI N'GUESSAN KOUASSI THEODORE",
                    style: TextStyle(
                      color: appWhite,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "Code: A****** - ID: ******",
                    style: TextStyle(
                      color: appWhite,
                      fontSize: 10,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: appWhite,
                          child: Icon(
                            Icons.refresh_outlined,
                            color: appColor,
                            size: 20,
                          ),
                        ),
                      ),
                      Gap(1.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mon solde",
                            style: TextStyle(
                              color: appWhite,
                              fontSize: 10,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          _obscure
                              ? Container()
                              : Text(
                                  "08/07/2024 22:04",
                                  style: TextStyle(
                                    color: appWhite,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        _obscure ? "*****" : "15 000 000",
                        style: TextStyle(
                          color: appWhite,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "F.CFA",
                        style: TextStyle(
                          color: appWhite,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          _obscure ? Icons.visibility_off : Icons.visibility,
                          color: appWhite,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscure = !_obscure;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(4.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 102,
                            width: 133,
                            decoration: BoxDecoration(
                              color: appGrey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.w)),
                            ),
                            padding: EdgeInsets.all(3.w),
                            child: CircleAvatar(
                              backgroundColor: appWhite,
                              child: Image.asset("assets/images/compte.png"),
                            ),
                          ),
                          Text(
                            "Mes comptes",
                            style: TextStyle(
                              color: appColor,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 12 * 0.14,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 102,
                            width: 133,
                            decoration: BoxDecoration(
                              color: appGrey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.w)),
                            ),
                            padding: EdgeInsets.all(3.w),
                            child: CircleAvatar(
                              backgroundColor: appWhite,
                              child: Image.asset("assets/images/transfert.png"),
                            ),
                          ),
                          Text(
                            "Transfert",
                            style: TextStyle(
                              color: appColor,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 12 * 0.14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 102,
                            width: 133,
                            decoration: BoxDecoration(
                              color: appGrey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.w)),
                            ),
                            padding: EdgeInsets.all(3.w),
                            child: CircleAvatar(
                              backgroundColor: appWhite,
                              child: Image.asset("assets/images/credit.png"),
                            ),
                          ),
                          Text(
                            "Crédit",
                            style: TextStyle(
                              color: appColor,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 12 * 0.14,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 102,
                            width: 133,
                            decoration: BoxDecoration(
                              color: appGrey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.w)),
                            ),
                            padding: EdgeInsets.all(3.w),
                            child: CircleAvatar(
                              backgroundColor: appWhite,
                              child: Image.asset("assets/images/assurance.png"),
                            ),
                          ),
                          Text(
                            "Assurance",
                            style: TextStyle(
                              color: appColor,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 12 * 0.14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 102,
                            width: 133,
                            decoration: BoxDecoration(
                              color: appGrey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.w)),
                            ),
                            padding: EdgeInsets.all(3.w),
                            child: CircleAvatar(
                              backgroundColor: appWhite,
                              child: Image.asset("assets/images/monetique.png"),
                            ),
                          ),
                          Text(
                            "Monétique",
                            style: TextStyle(
                              color: appColor,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 12 * 0.14,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 102,
                            width: 133,
                            decoration: BoxDecoration(
                              color: appGrey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.w)),
                            ),
                            padding: EdgeInsets.all(3.w),
                            child: CircleAvatar(
                              backgroundColor: appWhite,
                              child: Image.asset("assets/images/mail.png"),
                            ),
                          ),
                          Text(
                            "Mail",
                            style: TextStyle(
                              color: appColor,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 12 * 0.14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
