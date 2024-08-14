import 'package:flutter/material.dart';

class DasboardPages extends StatefulWidget {
  const DasboardPages({super.key});

  @override
  State<DasboardPages> createState() => _DasboardPagesState();
}

class _DasboardPagesState extends State<DasboardPages> {
  int curentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          scrolledUnderElevation: 10,
          backgroundColor: Colors.red,
          title: const Text(
            "Dasboard",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              curentPageIndex = index;
            });
          },
          indicatorColor: Colors.red,
          selectedIndex: curentPageIndex,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              icon: Icon(Icons.home),
              label: "Beranda",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.people,
                color: Colors.white,
              ),
              icon: Icon(Icons.people),
              label: "Profil",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              icon: Icon(Icons.search),
              label: "Pencarian",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.call,
                color: Colors.white,
              ),
              icon: Icon(Icons.call),
              label: "Call Center",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              icon: Icon(Icons.settings),
              label: "Pengaturan",
            )
          ],
        ),
      ),
    );
  }
}
