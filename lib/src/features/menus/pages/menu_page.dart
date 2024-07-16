import 'package:adecfineo/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../comptes/comptes.dart';
import '../../home/home.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int currentPageIndex = 0;

  final Widget _home = const HomePage();
  final Widget _compte = const ComptePage();
  final Widget _transfert = Container();
  final Widget _credit = Container();
  final Widget _others = Container();

  @override
  Widget build(BuildContext context) {
    final drawerItems = ListView(
      children: [
        Row(
          children: [
            Expanded(
              child: ClipOval(
                child: FlutterLogo(),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  onTap: () {},
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
    );
    return Scaffold(
      drawer: Drawer(
        child: drawerItems,
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: currentPageIndex == 0 ? appColor : appWhite,
        leading: Padding(
          padding: EdgeInsets.all(2.w),
          child: Image.asset(
            currentPageIndex == 0
                ? "assets/images/logowhite.png"
                : "assets/images/logoblue.png",
          ),
        ),
        actions: [
          Builder(builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.filter_list_outlined,
                color: currentPageIndex == 0 ? appWhite : appColor,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          }),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: appWhite,
        surfaceTintColor: appWhite,
        indicatorColor: appOrange.withOpacity(.11),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
              color: currentPageIndex == 0 ? appOrange : appBlack,
            ),
            label: "Accueil",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.account_balance_outlined,
              color: currentPageIndex == 1 ? appOrange : appBlack,
            ),
            label: "Compte",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.monetization_on_outlined,
              color: currentPageIndex == 2 ? appOrange : appBlack,
            ),
            label: "Monétique",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.payments_outlined,
              color: currentPageIndex == 3 ? appOrange : appBlack,
            ),
            label: "Crédit",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person_outlined,
              color: currentPageIndex == 4 ? appOrange : appBlack,
            ),
            label: "Profil",
          ),
        ],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    if (currentPageIndex == 0) {
      return _home;
    } else if (currentPageIndex == 1) {
      return _compte;
    } else if (currentPageIndex == 2) {
      return _transfert;
    } else if (currentPageIndex == 3) {
      return _credit;
    } else {
      return _others;
    }
  }
}
