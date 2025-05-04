import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'HomePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFF0ECE8),
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
                  // *** Icono de 'Breed'
                  Positioned(
                    right: size.width * 0.03,
                    top: size.height * 0.12,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0ECE8),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/icons/Huella_32px.png'),
                          scale: 1.2,
                        ),
                      ),
                    ),
                  ),
                  // *** Texto 'Gender'
                  Positioned(
                    left: size.width * 0.04,
                    top: size.height * 0.2,
                    child: Text(
                      'Gender',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  // *** Genero de la mascota
                  Positioned(
                    left: size.width * 0.04,
                    top: size.height * 0.22,
                    child: Text(
                      'Male',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // *** Icono de Genero
                  Positioned(
                    right: size.width * 0.03,
                    top: size.height * 0.2,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0ECE8),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/icons/Genero - 32px.png'),
                          scale: 1.2,
                        ),
                      ),
                    ),
                  ),
                  //*** Texto 'Size'
                  Positioned(
                    left: size.width * 0.04,
                    top: size.height * 0.28,
                    child: Text(
                      'Size',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  // *** Tamaño de la mascota
                  Positioned(
                    left: size.width * 0.04,
                    top: size.height * 0.3,
                    child: Text(
                      'Medium',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // *** Icono de 'Size'
                  Positioned(
                    right: size.width * 0.03,
                    top: size.height * 0.28,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0ECE8),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/icons/Size - 32px.png'),
                          scale: 1.2,
                        ),
                      ),
                    ),
                  ),
                  // *** Boton de 'Set up'
                  Positioned(
                    left: size.width * 0.03,
                    top: size.height * 0.4,
                    right: size.width * 0.03,
                    child: FloatingActionButton.extended(
                      onPressed: () {},
                      label: Text(
                        'Set up',
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color(0xFFF9F2F0),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      backgroundColor: const Color(0xFFD08D79),
                      icon: Image.asset(
                        'assets/icons/Setup - 64px.png',
                        scale: 1.8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // *** Contenedor de la informacion de la mascota 2
          Positioned(
            left: size.width * 0.53,
            top: size.height * 0.315,
            child: Container(
              width: size.width * 0.45,
              height: size.height * 0.25,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  // *** Texto 'Pet Type'
                  Positioned(
                    left: size.width * 0.04,
                    top: size.height * 0.03,
                    child: Text(
                      'Pet Type',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  // *** Icono de 'Pet'
                  Positioned(
                    right: size.width * 0.03,
                    top: size.height * 0.028,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0ECE8),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/icons/Hueso - 32px.png'),
                          scale: 1.2,
                        ),
                      ),
                    ),
                  ),
                  // *** Tipo de mascota
                  Positioned(
                    left: size.width * 0.04,
                    top: size.height * 0.055,
                    child: Text(
                      'Dog',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // *** Texto 'Age'
                  Positioned(
                    left: size.width * 0.04,
                    top: size.height * 0.11,
                    child: Text(
                      'Age',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  // *** Edad de la mascota
                  Positioned(
                    left: size.width * 0.04,
                    top: size.height * 0.14,
                    child: Text(
                      '2 Y.O',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // *** Icono de 'Age'
                  Positioned(
                    right: size.width * 0.03,
                    top: size.height * 0.11,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0ECE8),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/icons/Age - 32px.png'),
                          scale: 1.2,
                        ),
                      ),
                    ),
                  ),
                  // *** Boton de 'Complete'
                  Positioned(
                    left: size.width * 0.03,
                    top: size.height * 0.18,
                    right: size.width * 0.03,
                    bottom: size.height * 0.01,
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFFD08D79),
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: const Color(0xFFF9F2F0),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Text('Completed'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // *** Contenedor de Reservaciones
          Positioned(
            left: size.width * 0.53,
            top: size.height * 0.58,
            child: Container(
              width: size.width * 0.45,
              height: size.height * 0.37,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  // *** Texto 'Reservations'
                  Positioned(
                    left: size.width * 0.045,
                    top: size.height * 0.032,
                    child: Text(
                      'Actives',
                      style: TextStyle(
                        fontSize: 25,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // *** Icono de 'Reservaciones'
                  Positioned(
                    right: size.width * 0.03,
                    top: size.height * 0.024,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD08D78),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/icons/Actives - 32px.png'),
                          scale: 1.2,
                        ),
                      ),
                    ),
                  ),
                  // *** Texto 'Fecha'
                  Positioned(
                    left: size.width * 0.045,
                    top: size.height * 0.1,
                    child: Text(
                      'Date',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  // *** Fecha de la reservacion
                  Positioned(
                    left: size.width * 0.045,
                    top: size.height * 0.127,
                    child: Text(
                      '10/10/2023',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // *** Texto 'Hora de la reservacion'
                  Positioned(
                    left: size.width * 0.045,
                    top: size.height * 0.18,
                    child: Text(
                      'Time',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  // *** Hora de la reservacion
                  Positioned(
                    left: size.width * 0.045,
                    top: size.height * 0.205,
                    child: Text(
                      '10:00 AM',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF020202),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // *** Boton de 'Reservar'
                  Positioned(
                    left: size.width * 0.03,
                    top: size.height * 0.28,
                    right: size.width * 0.03,
                    bottom: size.height * 0.01,
                    child: FloatingActionButton.extended(
                      onPressed: () {},
                      label: Text(
                        'Reservar',
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color(0xFFF9F2F0),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      backgroundColor: const Color(0xFFD08D79),
                      icon: Image.asset(
                        'assets/icons/Reserve - 64px.png',
                        scale: 1.8,
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
