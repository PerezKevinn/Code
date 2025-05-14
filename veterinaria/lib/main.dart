import 'package:flutter/material.dart';
import 'package:veterinaria/screen/home_page.dart';
import 'package:veterinaria/screen/login_screen.dart';
import 'package:veterinaria/screen/register_screen.dart';
import 'package:veterinaria/screen/reserves_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   
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
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        HomePage.routeName: (context) => HomePage(),
        ReservesPage.routeName: (context) => ReservesPage(),
      },
    );
  }
}
