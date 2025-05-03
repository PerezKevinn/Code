import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'HomePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          Positioned(
            left: size.width * 0.02,
            top: size.height * 0.052,
            right: size.width * 0.02,
            child: Container(
              height: size.height * 0.25,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Image.asset('assets/avatars/Avatar_01.png')),
            ),
          ),
          Positioned(
            left: size.width * 0.02,
            top: size.height * 0.3,
            child: Image.asset('assets/icons/Huela_32px.png'),
          ),
        ],
      ),
    );
  }
}
