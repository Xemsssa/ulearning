import 'package:flutter/material.dart';
import 'package:ulearning/pages/Log_in/Log_in.dart';
import 'package:ulearning/pages/main/main_screen.dart';
import 'package:ulearning/pages/welcome/welcome.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List pages = [
    MainScreen(),
    LogIn(),
    LogIn(),
    LogIn(),
    LogIn(),
    // SignUpPage(),
    // ShoppingCart(),
    // SignInPage(),
    // ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: onChange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "play"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "person"),
        ],
      ),
    );
  }
  void onChange(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
