import 'package:flutter/material.dart';

import 'cart_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List pages = [
    HomeScreen(),
    const Center(child: Text('ADD')),
    const MyCart(),
    const Center(child: Text('Profile')),
  ];

  int current_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current_index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: ""),
        ],
        currentIndex: current_index,
        onTap: (newIndex) {
          setState(() {
            current_index = newIndex;
          });
        },
        backgroundColor: const Color(0xffE7F9DA),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
