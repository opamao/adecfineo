import 'package:adecfineo/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class HistoriqueComptePage extends StatefulWidget {
  const HistoriqueComptePage({super.key});

  @override
  State<HistoriqueComptePage> createState() => _HistoriqueComptePageState();
}

class _HistoriqueComptePageState extends State<HistoriqueComptePage> {
  DateTime? _startDate;
  DateTime? _endDate;
  final DateFormat _dateFormat = DateFormat('dd/MM/yyyy');

  _HistoriqueComptePageState()
      : _startDate = DateTime(DateTime.now().year, DateTime.now().month, 1),
        _endDate = DateTime(DateTime.now().year, DateTime.now().month + 1, 0);

  @override
  void initState() {
    super.initState();
    _startDate = DateTime(DateTime.now().year, DateTime.now().month, 1);
    _endDate = DateTime(DateTime.now().year, DateTime.now().month + 1, 0);
  }

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    DateTime? initialDate = isStartDate ? _startDate : _endDate;
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (selectedDate != null) {
      setState(() {
        if (isStartDate) {
          _startDate = selectedDate;
        } else {
          _endDate = selectedDate;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Historique compte épargne classique doni doni",
          style: TextStyle(
            color: appBlack,
            fontSize: 10,
            fontWeight: FontWeight.w300,
            letterSpacing: 10 * 0.03,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  // color: appColor,
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Solde",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 11,
                            fontWeight: FontWeight.w200,
                            letterSpacing: 11 * 0.03,
                          ),
                        ),
                        Text(
                          "30 000 F.CFA",
                          style: TextStyle(
                            color: appBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                      ],
                    ),
                    Gap(2.h),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  color: Colors.green,
                                  padding: const EdgeInsets.all(3),
                                  child: Icon(
                                    Icons.add,
                                    color: appWhite,
                                    size: 10.sp,
                                  ),
                                ),
                              ),
                              Gap(2.w),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Revenus",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w200,
                                      letterSpacing: 11 * 0.03,
                                    ),
                                  ),
                                  Text(
                                    "15 000 F.CFA",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      letterSpacing: 12 * 0.03,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          VerticalDivider(
                            thickness: 1,
                            color: appBlack,
                          ),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  color: appOrange,
                                  padding: const EdgeInsets.all(3),
                                  child: Icon(
                                    Icons.remove,
                                    color: appWhite,
                                    size: 10.sp,
                                  ),
                                ),
                              ),
                              Gap(2.w),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dépenses",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w200,
                                      letterSpacing: 11 * 0.03,
                                    ),
                                  ),
                                  Text(
                                    "15 000 F.CFA",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      letterSpacing: 12 * 0.03,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gap(2.h),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Début",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 11,
                            fontWeight: FontWeight.w200,
                            letterSpacing: 11 * 0.03,
                          ),
                        ),
                        Gap(1.h),
                        GestureDetector(
                          onTap: () => _selectDate(context, true),
                          child: Container(
                            decoration: BoxDecoration(
                              color: appGreySelect.withOpacity(.3),
                              border: Border.all(color: appGreyBorder),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(2.w),
                              child: Text(
                                _dateFormat.format(_startDate!),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Fin",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 11,
                            fontWeight: FontWeight.w200,
                            letterSpacing: 11 * 0.03,
                          ),
                        ),
                        Gap(1.h),
                        GestureDetector(
                          onTap: () => _selectDate(context, true),
                          child: Container(
                            decoration: BoxDecoration(
                              color: appGreySelect.withOpacity(.3),
                              border: Border.all(color: appGreyBorder),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(2.w),
                              child: Text(
                                _dateFormat.format(_endDate!),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
