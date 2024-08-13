import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../themes/themes.dart';

class NouvellePage extends StatefulWidget {
  const NouvellePage({super.key});

  @override
  State<NouvellePage> createState() => _NouvellePageState();
}

class _NouvellePageState extends State<NouvellePage> {
  bool _obscure = true;
  final List<String> genderItems = [
    "TOUT",
    "COMPTE EPARGNE CLASSIQUE DONI DONI",
  ];

  String? selectedValue;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: AppBar(
        backgroundColor: appColor,
        centerTitle: true,
        title: Text(
          "Nouvelle souscription",
          style: TextStyle(
            color: appWhite,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            letterSpacing: 15 * 0.03,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(4.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Compte disponible",
                        style: TextStyle(
                          color: appWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 14 * 0.02,
                        ),
                      ),
                      Gap(2.h),
                      Container(
                        decoration: BoxDecoration(
                          color: appGreySelect,
                          borderRadius: BorderRadius.circular(20),
                        ),
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
                            "SELECTONNEZ LE COMPTE",
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
                            padding: EdgeInsets.symmetric(horizontal: 16),
                          ),
                        ),
                      ),
                      Gap(2.h),
                      Text(
                        "25*********************",
                        style: TextStyle(
                          color: appWhite,
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          letterSpacing: 12 * 0.03,
                        ),
                      ),
                      Gap(2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
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
                                "Mon solde",
                                style: TextStyle(
                                  color: appWhite,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 12 * 0.03,
                                ),
                              ),
                            ],
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
                          Gap(1.w),
                          Row(
                            children: [
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
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.all(4.w),
                  decoration: BoxDecoration(
                    color: appWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.w),
                      topRight: Radius.circular(8.w),
                    ),
                  ),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
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
                              "COMPTE A OUVRIR",
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
                        Gap(2.h),
                        Container(
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
                              "DE",
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
                      ],
                    ),
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
