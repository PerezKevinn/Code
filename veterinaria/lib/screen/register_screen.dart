import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = 'RegisterScreen';
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFD08D79),
      body: Stack(
        children: [
          Positioned(
            left: size.width * 0.1,
            top: size.height * 0.05,
            right: size.width * 0.1,
            child: Container(
              height: size.height * 0.35,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: Color(0xFFD08D79),
                image: DecorationImage(
                  image: AssetImage('assets/images/Logotipo.png'),
                  scale: 0.8,
                ),
              ),
            ),
          ),
          _BoxInferior(),
          Positioned(
            left: size.width * 0.21,
            top: size.height * 0.53,
            right: size.width * 0.1,
            child: Text.rich(
              TextSpan(
                text: 'Create an account',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF020202),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.1,
            top: size.height * 0.6,
            right: size.width * 0.1,
            child: TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.1,
            top: size.height * 0.68,
            right: size.width * 0.1,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.1,
            top: size.height * 0.76,
            right: size.width * 0.1,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.28,
            top: size.height * 0.84,
            right: size.width * 0.28,
            child: FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                backgroundColor: Color(0xFFD08D78),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('Sing Up'),
            ),
          ),
          Positioned(
            left: size.width * 0.05,
            top: size.height * 0.86,
            right: size.width * 0.05,
            child: Divider(
              color: Color(0xFF808080),
              height: size.height * 0.1,
              thickness: 1,
              indent: size.width * 0.1,
              endIndent: size.width * 0.1,
            ),
          ),
          Positioned(
            left: size.width * 0.15,
            top: size.height * 0.92,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Color(0xFF020202),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('Already have an account?'),
            ),
          ),
          Positioned(
            top: size.height * 0.92,
            right: size.width * 0.1,
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Color(0xFFD08D78),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text('Log In'),
            ),
          ),
        ],
      ),
    );
  }
}

class _BoxInferior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _BoxPainter()),
    );
  }
}

class _BoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 50;

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.6);
    path.quadraticBezierTo(
      0,
      size.height * 0.5,
      size.width * 0.25,
      size.height * 0.5,
    );
    path.lineTo(size.width * 0.8, size.height * 0.5);
    path.quadraticBezierTo(
      size.width,
      size.height * 0.5,
      size.width,
      size.height * 0.4,
    );
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
