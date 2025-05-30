import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants/constants.dart';
import '../../../../themes/themes.dart';
import '../../../../widgets/widgets.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({super.key});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  bool _isSelected = true;
  final _formKeyTrans = GlobalKey<FormState>();

  var phone = TextEditingController();
  var name = TextEditingController();

  String phoneInicator = "";
  String initialCountry = 'CI';
  PhoneNumber number = PhoneNumber(isoCode: 'CI');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Repertoire des numéros"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  tabs: const [
                    Text(
                      "Mes numéros",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Nouveau",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                  labelColor: appOrange,
                  unselectedLabelColor: appGreyBorder,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView(
                        children: [
                          Gap(4.h),
                          Container(
                            decoration: BoxDecoration(
                              color: appWhite,
                              border: Border.all(color: appGreyBorder),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListTile(
                              title: Text(
                                "Théodore YAPI",
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              subtitle: Container(
                                padding: EdgeInsets.all(2.w),
                                decoration: BoxDecoration(
                                  color: appGrey,
                                  border: Border.all(color: appGreyBorder),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "+2250748650731",
                                      style: TextStyle(
                                        color: appColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Actif",
                                      style: TextStyle(
                                        color: appOrange,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        child: Form(
                          key: _formKeyTrans,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Gap(4.h),
                              Container(
                                padding: EdgeInsets.only(left: 4.w),
                                decoration: BoxDecoration(
                                  color: appGreySelect.withOpacity(.3),
                                  borderRadius: BorderRadius.circular(4.w),
                                ),
                                child: InternationalPhoneNumberInput(
                                  onInputChanged: (PhoneNumber number) {
                                    phoneInicator = number.phoneNumber!;
                                  },
                                  onInputValidated: (bool value) {},
                                  errorMessage: "Le numéro est invalide",
                                  hintText: "Numéro de téléphone",
                                  selectorConfig: const SelectorConfig(
                                    selectorType:
                                    PhoneInputSelectorType.BOTTOM_SHEET,
                                  ),
                                  ignoreBlank: false,
                                  autoValidateMode: AutovalidateMode.disabled,
                                  selectorTextStyle: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  initialValue: number,
                                  textFieldController: phone,
                                  formatInput: true,
                                  keyboardType:
                                  const TextInputType.numberWithOptions(
                                    signed: true,
                                    decimal: true,
                                  ),
                                  inputBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  onSaved: (PhoneNumber number) {},
                                ),
                              ),
                              Gap(2.h),
                              InputText(
                                controller: name,
                                hintText: "Nom et prénom",
                                keyboardType: TextInputType.text,
                                colorFille: appGreySelect.withOpacity(.3),
                                validatorMessage:
                                "Saisissez votre nom & prénom",
                              ),
                              Gap(2.w),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: CheckboxListTile(
                                  controlAffinity:
                                  ListTileControlAffinity.leading,
                                  focusNode: FocusNode(skipTraversal: true),
                                  value: _isSelected,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isSelected = value!;
                                    });
                                  },
                                  title: Text(
                                    "Actif",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                              Gap(2.h),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: SubmitButton(
                                      AppConstants.btnBenef,
                                      onPressed: () {
                                        if (_formKeyTrans.currentState!
                                            .validate()) {}
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: CancelButton(
                                      AppConstants.btnClear,
                                      onPressed: () {
                                        if (_formKeyTrans.currentState!
                                            .validate()) {}
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
      ),
    );
  }
}
