import 'package:adecfineo/src/themes/themes.dart';
import 'package:flutter/material.dart';
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
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: const Text(
        "YAPI N'GUESSAN KOUASSI THEODORE",
      ),
      accountEmail: const Text(
        "+2250585831647",
      ),
      currentAccountPicture: ClipOval(
        child: Image.asset("assets/images/user.jpeg"),
      ),
    );
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: const Text(
            "Item1",
          ),
          leading: const Icon(Icons.favorite),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text(
            "item2",
          ),
          onTap: () {
            Navigator.pop(context);
          },
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
              Icons.person_outlined,
              color: currentPageIndex == 1 ? appOrange : appBlack,
            ),
            label: "Compte",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.swap_horiz_outlined,
              color: currentPageIndex == 2 ? appOrange : appBlack,
            ),
            label: "Transfert",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.wallet_outlined,
              color: currentPageIndex == 3 ? appOrange : appBlack,
            ),
            label: "Crédit",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.widgets_outlined,
              color: currentPageIndex == 4 ? appOrange : appBlack,
            ),
            label: "Autes",
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
