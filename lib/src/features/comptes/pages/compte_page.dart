import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

import '../../../../constants/constants.dart';
import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';
import '../comptes.dart';

class ComptePage extends StatefulWidget {
  const ComptePage({super.key});

  @override
  State<ComptePage> createState() => _ComptePageState();
}

const double _bottomPaddingForButton = 150.0;
const double _pagePadding = 16.0;
const double _pageBreakpoint = 768.0;

class _ComptePageState extends State<ComptePage> {
  @override
  Widget build(BuildContext context) {
    final pageIndexNotifier = ValueNotifier(0);

    SliverWoltModalSheetPage page1(
        BuildContext modalSheetContext, TextTheme textTheme) {
      return WoltModalSheetPage(
        backgroundColor: appWhite,
        surfaceTintColor: appWhite,
        hasSabGradient: false,
        stickyActionBar: Padding(
          padding: const EdgeInsets.all(_pagePadding),
          child: Row(
            children: [
              Expanded(
                child: CancelButton(
                  AppConstants.btnCancel,
                  onPressed: () => Navigator.of(modalSheetContext).pop(),
                ),
              ),
              Gap(2.w),
              Expanded(
                child: SubmitButton(
                  AppConstants.btnContinue,
                  onPressed: () =>
                      pageIndexNotifier.value = pageIndexNotifier.value + 1,
                ),
              ),
            ],
          ),
        ),
        topBarTitle: Text(
          "Dépôt déplacé",
          style: TextStyle(
            color: appBlack,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            letterSpacing: 15 * 0.03,
          ),
        ),
        isTopBarLayerAlwaysVisible: true,
        trailingNavBarWidget: IconButton(
          padding: const EdgeInsets.all(_pagePadding),
          icon: const Icon(Icons.close),
          onPressed: Navigator.of(modalSheetContext).pop,
        ),
        child: const DepotPage(),
      );
    }

    SliverWoltModalSheetPage page2(
        BuildContext modalSheetContext, TextTheme textTheme) {
      return WoltModalSheetPage(
        backgroundColor: appWhite,
        surfaceTintColor: appWhite,
        hasSabGradient: false,
        stickyActionBar: Padding(
          padding: const EdgeInsets.all(_pagePadding),
          child: SubmitButton(
            AppConstants.btnValid,
            onPressed: () {
              Navigator.of(modalSheetContext).pop();
              pageIndexNotifier.value = 0;
            },
          ),
        ),
        pageTitle: Padding(
          padding: const EdgeInsets.all(_pagePadding),
          child: Text(
            "Dépôt déplacé",
            style: TextStyle(
              color: appBlack,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              letterSpacing: 15 * 0.03,
            ),
          ),
        ),
        leadingNavBarWidget: IconButton(
          padding: const EdgeInsets.all(_pagePadding),
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () =>
              pageIndexNotifier.value = pageIndexNotifier.value - 1,
        ),
        trailingNavBarWidget: IconButton(
          padding: const EdgeInsets.all(_pagePadding),
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(modalSheetContext).pop();
            pageIndexNotifier.value = 0;
          },
        ),
        child: const DepotFormOnePage(
          pagePadding: _pagePadding,
          bottomPaddingFroButton: _bottomPaddingForButton,
        ),
      );
    }

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
                  "Mes comptes",
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ConsultationPage(),
                            ),
                          );
                        },
                        leading: Image.asset("assets/images/solde.png"),
                        title: Text(
                          "Consulter solde",
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
                        leading: Image.asset("assets/images/releve.png"),
                        title: Text(
                          "Relevé de compte",
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
                          builder: (context) => const NouvellePage(),
                        ),
                        leading: Image.asset("assets/images/nouvelle.png"),
                        title: Text(
                          "Nouvelle souscription",
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
                        leading: Image.asset("assets/images/mise.png"),
                        title: Text(
                          "Mise à disposition de fond en agence",
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
                        onTap: () {
                          WoltModalSheet.show<void>(
                            pageIndexNotifier: pageIndexNotifier,
                            context: context,
                            pageListBuilder: (modalSheetContext) {
                              final textTheme = Theme.of(context).textTheme;
                              return [
                                page1(modalSheetContext, textTheme),
                                page2(modalSheetContext, textTheme),
                              ];
                            },
                            modalTypeBuilder: (context) {
                              final size = MediaQuery.of(context).size.width;
                              if (size < _pageBreakpoint) {
                                return WoltModalType.bottomSheet();
                              } else {
                                return WoltModalType.dialog();
                              }
                            },
                            onModalDismissedWithBarrierTap: () {
                              debugPrint('Closed modal sheet with barrier tap');
                              Navigator.of(context).pop();
                              pageIndexNotifier.value = 0;
                            },
                          );
                        },
                        leading: Image.asset("assets/images/depot.png"),
                        title: Text(
                          "Dépôt déplacé",
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
                          builder: (context) => const ChequePage(),
                        ),
                        leading: Image.asset("assets/images/cheque.png"),
                        title: Text(
                          "Chèque déplacé",
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
