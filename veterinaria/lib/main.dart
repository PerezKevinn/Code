import 'package:flutter/material.dart';
import 'package:veterinaria/screen/home_page.dart';
import 'package:veterinaria/screen/login_screen.dart';
import 'package:veterinaria/screen/register_screen.dart';
import 'package:veterinaria/screen/reserves_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Veterinary Clinic',
      initialRoute: ReservesPage.routeName,
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        RegisterScreen.routeName: (context) => const RegisterScreen(),
        HomePage.routeName: (context) => const HomePage(),
        ReservesPage.routeName: (context) => const ReservesPage(),
      },
    );
  }
}
