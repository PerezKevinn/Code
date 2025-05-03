import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'HomePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black, //const Color(0xFFF0ECE8),
      body: Stack(
        children: [
          Positioned(
            left: size.width * 0.02,
            top: size.height * 0.052,
            right: size.width * 0.02,
            // *** Contenedor de la parte superior
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
          // **** Posicionamiento de la imagen de la huella
          Positioned(
            left: size.width * 0.05,
            top: size.height * 0.07,
            child: Image.asset('assets/icons/Huella - 64px.png'),
          ),
          // *** Nombre de la mascota
          Positioned(
            left: size.width * 0.07,
            top: size.height * 0.256,
            right: size.width * 0.1,
            child: Text.rich(
              TextSpan(
                text: 'Toby',
                style: TextStyle(
                  fontSize: 24,
                  color: const Color(0xFF020202),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // *** Contenedor de la seleccion de avatar
          Positioned(
            left: size.width * 0.02,
            top: size.height * 0.315,
            child: Container(
              height: size.height * 0.15,
              width: size.width * 0.45,
              decoration: BoxDecoration(
                color: const Color(0xFFD08D79),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  // *** Texto Superior
                  Positioned(
                    left: size.width * 0.08,
                    top: size.height * 0.01,
                    child: Text(
                      'Pet',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // *** Texto Inferiror
                  Positioned(
                    left: size.width * 0.04,
                    top: size.height * 0.045,
                    child: Text(
                      'Avatar',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // *** Boton de seleccion
                  Positioned(
                    right: size.width * 0.02,
                    top: size.height * 0.10,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/Seleccionar - 64px.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // *** Contenedor de la informacion de la mascota
          Positioned(
            left: size.width * 0.02,
            top: size.height * 0.48,
            child: Container(
              width: size.width * 0.45,
              height: size.height * 0.47,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  // *** Texto 'Settings'
                  Positioned(
                    left: size.width * 0.04,
                    top: size.height * 0.025,
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 25,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // *** Icono de 'Settings'
                  Positioned(
                    right: size.width * 0.03,
                    top: size.height * 0.02,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD08D79),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/icons/Settings - 64px.png'),
                          scale: 1.2,
                        ),
                      ),
                    ),
                  ),
                  // *** Texto 'Breed'
                  Positioned(
                    left: size.width * 0.04,
                    top: size.height * 0.12,
                    child: Text(
                      'Breed',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  // *** Raza de la mascota
                  Positioned(
                    left: size.width * 0.04,
                    top: size.height * 0.145,
                    child: Text(
                      'Goldern R.',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
