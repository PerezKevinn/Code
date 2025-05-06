import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReservesPage extends StatefulWidget {
  static const String routeName = 'ReservesPage';
  const ReservesPage({super.key});

  @override
  State<ReservesPage> createState() => _ReservesPageState();
}

class _ReservesPageState extends State<ReservesPage> {
  int selectedDateIndex = 0;
  late List<DateTime> dates;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    dates = generateDatesOfMonth(now.year, now.month);
  }

  List<DateTime> generateDatesOfMonth(int year, int month) {
    final firstDay = DateTime(year, month, 1);
    final lastDay = DateTime(year, month + 1, 0);
    return List.generate(
      lastDay.day,
      (index) => DateTime(year, month, index + 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          //*** Texto de crear reserva
          Positioned(
            left: size.width * 0.05,
            top: size.height * 0.07,
            child: Text.rich(
              TextSpan(
                text: 'Create Reserve',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // *** Boton de Cancelar
          Positioned(
            right: size.width * 0.03,
            top: size.height * 0.063,
            child: FilledButton(
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
                backgroundColor: const Color(0xFFD08D79),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Cancel',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // *** Botones de fecha
          Positioned(
            left: size.width * 0.05,
            top: size.height * 0.15,
            child: SizedBox(
              height: 120,
              width: size.width * 0.9,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dates.length,
                itemBuilder: (context, index) {
                  final date = dates[index];
                  final isSelected = index == selectedDateIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDateIndex = index;
                      });
                    },
                    child: Container(
                      width: 85,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color:
                            selectedDateIndex == index
                                ? const Color(0xFFD08D79)
                                : Colors.white,

                        borderRadius: BorderRadius.circular(20),
                        border:
                            selectedDateIndex == index
                                ? Border.all(
                                  color: Colors.transparent,
                                  width: 0,
                                )
                                : Border.all(
                                  color: const Color(0xFF505050),
                                  width: 2,
                                ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            date.day.toString(),
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color:
                                  isSelected
                                      ? Colors.white
                                      : const Color(0xFF505050),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            DateFormat('MMM').format(date).toUpperCase(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color:
                                  isSelected
                                      ? Colors.white
                                      : const Color(0xFF505050),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // *** Texto de seleccionar hora
          Positioned(
            left: size.width * 0.05,
            top: size.height * 0.3,
            child: Text.rich(
              TextSpan(
                text: 'Select Time',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // *** Boton de Consulta General
          Positioned(
            left: size.width * 0.05,
            top: size.height * 0.5,
            right: size.width * 0.05,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                overlayColor: const Color(0xFFD08D78),
                padding: const EdgeInsets.fromLTRB(80, 20, 0, 20),
                alignment: Alignment.centerLeft,
                elevation: 10,
                backgroundColor: const Color(0xFFFFFFFF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black, width: 1.5),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text.rich(
                TextSpan(
                  text: 'General Consultation',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.08,
            top: size.height * 0.51,
            child: Image.asset(
              'assets/icons/General_Consultation - 64px.png',
              scale: 1.4,
            ),
          ),

          // *** Boton de Vacunas
          Positioned(
            left: size.width * 0.05,
            top: size.height * 0.58,
            right: size.width * 0.05,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                overlayColor: const Color(0xFFD08D78),
                padding: const EdgeInsets.fromLTRB(80, 20, 0, 20),
                alignment: Alignment.centerLeft,
                elevation: 10,
                backgroundColor: const Color(0xFFFFFFFF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black, width: 1.5),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text.rich(
                TextSpan(
                  text: 'Vaccines',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          // *** Icono de Vacunas
          Positioned(
            left: size.width * 0.08,
            top: size.height * 0.59,
            child: Image.asset('assets/icons/Vaccines - 64px.png', scale: 1.4),
          ),
          // *** Boton de Rehabilitacion
          Positioned(
            left: size.width * 0.05,
            top: size.height * 0.66,
            right: size.width * 0.05,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                overlayColor: const Color(0xFFD08D78),
                padding: const EdgeInsets.fromLTRB(80, 20, 0, 20),
                alignment: Alignment.centerLeft,
                elevation: 10,
                backgroundColor: const Color(0xFFFFFFFF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black, width: 1.5),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text.rich(
                TextSpan(
                  text: 'Rehabilitation',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          // *** Icono de Rehabilitacion
          Positioned(
            left: size.width * 0.08,
            top: size.height * 0.67,
            child: Image.asset(
              'assets/icons/Rehabilitation - 64px.png',
              scale: 1.4,
            ),
          ),
          // *** Boton de Cirugia
          Positioned(
            left: size.width * 0.05,
            top: size.height * 0.74,
            right: size.width * 0.05,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                overlayColor: const Color(0xFFD08D78),
                padding: const EdgeInsets.fromLTRB(80, 20, 0, 20),
                alignment: Alignment.centerLeft,
                elevation: 10,
                backgroundColor: const Color(0xFFFFFFFF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black, width: 1.5),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text.rich(
                TextSpan(
                  text: 'Surgery',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          // *** Icono de Cirugia
          Positioned(
            left: size.width * 0.08,
            top: size.height * 0.75,
            child: Image.asset('assets/icons/Surgery - 64px.png', scale: 1.4),
          ),
          // *** Boton de Done
          Positioned(
            left: size.width * 0.35,
            top: size.height * 0.85,
            child: FilledButton(
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
                backgroundColor: const Color(0xFFD08D79),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Done',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
