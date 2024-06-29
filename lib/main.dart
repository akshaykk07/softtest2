import 'package:flutter/material.dart';

import 'add_plant.dart';
import 'cart_screen.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'mainScreen.dart';
import 'product_screen.dart';
import 'register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
      routes: {
        'homescreen': (context) => HomeScreen(),
        'cart': (context) => const MyCart(),
        'product': (context) => ProductScreen(),
        'login': (context) => const LoginPage(),
        'signup': (context) => const RegisterPage(),
        'main': (context) => MainScreen()
      },
    );
  }
}
