import 'package:flutter/material.dart';
import 'package:instagram/presentation/pages/home_screen.dart';
import 'package:instagram/util/theme.dart';

class TabbarBottom extends StatefulWidget {
  const TabbarBottom({super.key});

  @override
  State<TabbarBottom> createState() => _TabbarBottomState();
}

class _TabbarBottomState extends State<TabbarBottom> {
  List<BottomNavigationBarItem> listItem = [
    BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/tb_home.png',
          width: 23,
          height: 25,
        ),
        label: ''),
    BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/tb_search.png',
          width: 23,
          height: 25,
        ),
        label: ''),
    BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/tb_plus.png',
          width: 23,
          height: 25,
        ),
        label: ''),
    BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/tb_favorite.png',
          width: 23,
          height: 25,
        ),
        label: ''),
    BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/tb_user.webp',
          width: 40,
          height: 45,
        ),
        label: ''),
  ];

  List<Widget> listScreen = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  int activeNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: listScreen[activeNumber],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeNumber,
        elevation: 1,
        backgroundColor: kPrimaryColor,
        items: listItem,
        selectedItemColor: const Color.fromARGB(255, 11, 125, 218),
        unselectedItemColor: Colors.white,
        onTap: (value) => setState(() {
          activeNumber = value;
        }),
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
      ),
    );
  }
}
