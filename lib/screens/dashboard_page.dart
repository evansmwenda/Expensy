import 'package:expensy/screens/add_transaction.dart';
import 'package:expensy/screens/profile_tab.dart';
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
              icon: SvgPicture.asset("assets/icons/home.svg",height:32,width:32,),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/chart.svg",height:32,width:32,),
              label: "Stat",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/wallet.svg",height:32,width:32,),
              label: "Wallet",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/user.svg",height:32,width:32,),
              label: "Profile",
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(

          onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddTransaction()),);
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
