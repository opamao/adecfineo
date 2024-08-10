import 'package:adecfineo/src/themes/themes.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> monthItems = [
    "Janvier",
    "Février",
    "Mars",
    "Avril",
    "Mai",
    "Juin",
    "Juillet",
    "Août",
    "Septembre",
    "Octobre",
    "Novembre",
    "Decembre",
  ];
  final List<String> genderItems = [
    "TOUT",
    "COMPTE EPARGNE CLASSIQUE DONI DONI",
  ];

  String? selectedValue;
  String? selectedMonth;
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(4.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: appWhite,
                              child: Image.asset(
                                "assets/images/userblue.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Gap(2.w),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
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
                                      Text(
                                        _obscure ? "*****" : "15 000 000",
                                        style: TextStyle(
                                          color: appWhite,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
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
                                          _obscure
                                              ? Icons.visibility_off
                                              : Icons.visibility,
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
                          ],
                        ),
                        Gap(3.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: appGrey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.w)),
                                  ),
                                  padding: EdgeInsets.all(1.w),
                                  child: CircleAvatar(
                                    backgroundColor: appWhite,
                                    child:
                                        Image.asset("assets/images/depot.png"),
                                  ),
                                ),
                                Text(
                                  "Dépôt",
                                  style: TextStyle(
                                    color: appWhite,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 12 * 0.14,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: appGrey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.w)),
                                  ),
                                  padding: EdgeInsets.all(1.w),
                                  child: CircleAvatar(
                                    backgroundColor: appWhite,
                                    child: Image.asset(
                                        "assets/images/retrait.png"),
                                  ),
                                ),
                                Text(
                                  "Retrait",
                                  style: TextStyle(
                                    color: appWhite,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 12 * 0.14,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: appGrey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.w)),
                                  ),
                                  padding: EdgeInsets.all(1.w),
                                  child: CircleAvatar(
                                    backgroundColor: appWhite,
                                    child: Image.asset(
                                        "assets/images/transfertb.png"),
                                  ),
                                ),
                                Text(
                                  "Transfert",
                                  style: TextStyle(
                                    color: appWhite,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 12 * 0.14,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: appGrey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.w)),
                                  ),
                                  padding: EdgeInsets.all(1.w),
                                  child: CircleAvatar(
                                    backgroundColor: appWhite,
                                    child: Image.asset(
                                        "assets/images/facture.png"),
                                  ),
                                ),
                                Text(
                                  "Facture",
                                  style: TextStyle(
                                    color: appWhite,
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
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(4.w),
                    decoration: BoxDecoration(
                      color: appWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.w),
                        topRight: Radius.circular(8.w),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: appGreySelect.withOpacity(.3),
                                child: DropdownButtonFormField2<String>(
                                  isExpanded: true,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  hint: const Text(
                                    "Mois",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  items: monthItems
                                      .map(
                                        (item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  validator: (value) {
                                    if (value == null) {
                                      return "Veuillez sélectionner le mois";
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {},
                                  onSaved: (value) {
                                    selectedMonth = value.toString();
                                  },
                                  buttonStyleData: const ButtonStyleData(
                                    padding: EdgeInsets.only(right: 8),
                                  ),
                                  iconStyleData: IconStyleData(
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: appBlack,
                                    ),
                                    iconSize: 24,
                                  ),
                                  dropdownStyleData: DropdownStyleData(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3.w),
                                    ),
                                  ),
                                  menuItemStyleData: const MenuItemStyleData(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16),
                                  ),
                                ),
                              ),
                            ),
                            Gap(2.w),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: appGreySelect.withOpacity(.3),
                                child: DropdownButtonFormField2<String>(
                                  isExpanded: true,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  hint: const Text(
                                    "Compte",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  items: genderItems
                                      .map(
                                        (item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  validator: (value) {
                                    if (value == null) {
                                      return "Veuillez sélectionner le compte";
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {},
                                  onSaved: (value) {
                                    selectedValue = value.toString();
                                  },
                                  buttonStyleData: const ButtonStyleData(
                                    padding: EdgeInsets.only(right: 8),
                                  ),
                                  iconStyleData: IconStyleData(
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: appBlack,
                                    ),
                                    iconSize: 24,
                                  ),
                                  dropdownStyleData: DropdownStyleData(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3.w),
                                    ),
                                  ),
                                  menuItemStyleData: const MenuItemStyleData(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(2.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Transaction",
                              style: TextStyle(
                                color: appBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 14 * 0.14,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Afficher plus",
                                style: TextStyle(
                                  color: appColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 10 * 0.10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(2.h),
                        Text(
                          "Aujourd'hui",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 12 * 0.03,
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
                            leading: const CircleAvatar(
                              child: FlutterLogo(),
                            ),
                            title: Text(
                              "Orange Money",
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
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.all(4.w),
                child: FloatingActionButton(
                  heroTag: "qrcode",
                  onPressed: () {},
                  child: Icon(
                    Icons.qr_code,
                    size: 8.w,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
