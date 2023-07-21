import 'package:expensy/screens/profile_tab.dart';
import 'package:expensy/utils/constants.dart';
import 'package:flutter/material.dart';

import 'home_tab.dart';

class DashboardPage extends StatefulWidget {
  var currentIndex = 3;
   DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {


    Widget buildTabContent(int index) {
      print("running build ocntent $index");
      switch (index) {
        case 0:
          return const HomeTab();
        case 1:
          return Container();
        case 2:
          return Container();
        case 3:
          return const ProfileTab();
      }
      return const HomeTab();
    }

    return SafeArea(
      child: Scaffold(
        body: buildTabContent(widget.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: widget.currentIndex,
          selectedItemColor: secondaryDark,
          unselectedItemColor: fontLight,
          selectedLabelStyle: TextStyle(fontSize: 13),
          onTap: (index) {
            setState(() {
              widget.currentIndex = index;
              print("current index ${widget.currentIndex }");
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/home-1.png"),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/chart-vertical.png"),
              label: "Stat",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/wallet.png"),
              label: "Wallet",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/user-1.png"),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}

class ExpensePage extends StatelessWidget {
  const ExpensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text("Expensed"),
      ),
    );
  }
}
