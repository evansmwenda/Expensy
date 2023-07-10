import 'package:expensy/screens/home_page.dart';
import 'package:expensy/widgets/sp_icon.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    List<Widget> pages = [
      HomePage(),
      ExpensePage(),
      HomePage(),
    ];


    return SafeArea(
      child: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Color(0xfffe416c),
          selectedLabelStyle: TextStyle(fontSize: 13),
          onTap: (index) {
            setState(() {
              currentIndex = index;
              print("current index $index");
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SPIcon(
                assetName: "logo-black.png",
                index: 0,
                currentIndex: currentIndex,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SPIcon(
                assetName: "categories.png",
                index: 1,
                currentIndex: currentIndex,
              ),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: SPIcon(
                assetName: "profile.png",
                index: 2,
                currentIndex: currentIndex,
              ),
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