import 'package:expensy/screens/add_transaction.dart';
import 'package:expensy/screens/profile_tab.dart';
import 'package:expensy/screens/stats_page.dart';
import 'package:expensy/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_tab.dart';

class DashboardPage extends StatefulWidget {
  var currentIndex = 0;
   DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {


    Widget buildTabContent(int index) {
      switch (index) {
        case 0:
          return const HomeTab();
        case 1:
          return const StatsPage();
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
          backgroundColor: Colors.blue,
          elevation: 0,
          // shape: CircularNotchedRectangle(), //shape of notch
          // notchMargin: 5, //notche margin between floating button and bottom appbar
          currentIndex: widget.currentIndex,
          selectedItemColor: secondaryDark,
          unselectedItemColor: fontLight,
          selectedLabelStyle: const TextStyle(fontSize: 13),
          onTap: (index) {
            setState(() {
              widget.currentIndex = index;
              print("current index ${widget.currentIndex }");
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/home.svg",height:22,width:22,),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/chart.svg",height:22,width:22,),
              label: "Stat",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/wallet.svg",height:22,width:22,),
              label: "Wallet",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/user.svg",height:22,width:22,),
              label: "Profile",
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddTransaction()),);
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
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
