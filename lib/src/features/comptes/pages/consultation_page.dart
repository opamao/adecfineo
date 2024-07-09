import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../../../themes/themes.dart';
import '../comptes.dart';

class ConsultationPage extends StatefulWidget {
  const ConsultationPage({super.key});

  @override
  State<ConsultationPage> createState() => _ConsultationPageState();
}

class _ConsultationPageState extends State<ConsultationPage> {
  final List<String> genderItems = [
    "TOUT",
    "COMPTE EPARGNE CLASSIQUE DONI DONI",
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Consultation de solde",
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
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: appColor,
                            child: Icon(
                              Icons.refresh_outlined,
                              color: appWhite,
                              size: 30,
                            ),
                          ),
                        ),
                        Gap(2.w),
                        Expanded(
                          child: Container(
                            color: appGreySelect.withOpacity(.3),
                            child: DropdownButtonFormField2<String>(
                              isExpanded: true,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              hint: const Text(
                                "SELECTIONNEZ LE COMPTE",
                                style: TextStyle(fontSize: 14),
                              ),
                              items: genderItems
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ))
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
                                padding: EdgeInsets.symmetric(horizontal: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(2.h),
                    Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(3.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "COMPTE EPARGNE CLASSIQUE DONI DONI",
                                  style: TextStyle(
                                    color: appBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    letterSpacing: 12 * 0.03,
                                  ),
                                ),
                                Gap(2.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Mon solde",
                                          style: TextStyle(
                                            color: appBlack,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                            letterSpacing: 12 * 0.03,
                                          ),
                                        ),
                                        Text(
                                          "30/06/2024 20:17",
                                          style: TextStyle(
                                            color: appBlack,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 12,
                                            letterSpacing: 12 * 0.03,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "15 000 000",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        letterSpacing: 12 * 0.03,
                                      ),
                                    ),
                                    Text(
                                      "F.CFA",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        letterSpacing: 12 * 0.03,
                                      ),
                                    ),
                                  ],
                                ),
                                Gap(1.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Numéro de compte",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        letterSpacing: 12 * 0.03,
                                      ),
                                    ),
                                    Text(
                                      "ID cpte",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        letterSpacing: 12 * 0.03,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "25******************",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        letterSpacing: 12 * 0.03,
                                      ),
                                    ),
                                    Text(
                                      "13***",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        letterSpacing: 12 * 0.03,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: appOrange,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(3.w),
                                bottomRight: Radius.circular(3.w),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () => showBarModalBottomSheet(
                                expand: true,
                                context: context,
                                barrierColor: appColor,
                                builder: (context) =>
                                    const HistoriqueComptePage(),
                              ),
                              child: Text(
                                "Historique des transactions",
                                style: TextStyle(
                                  color: appWhite,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 10 * 0.03,
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
