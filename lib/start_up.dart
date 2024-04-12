
import 'package:flutter/material.dart';
import 'package:startup_education/education1.dart';

class StartUp extends StatelessWidget {
  const StartUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset("assets/desk.jpg"),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Opacity(
              opacity: 0.5,
              child: Container(
                width: 414,
                height: 256,
                decoration: const BoxDecoration(color: Color(0xFF2A3447)),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            child: Container(
              child: Image.asset("assets/Time.png"),
            ),
          ),
          Positioned(
            left: 20,
            top: 60,
            child: Container(
              child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const education1()));
          },child: Image.asset("assets/feather_arrow-left.png")),
            ),
          ),
          Positioned(
            left: 60,
            top: 65,
            child: Container(
              child: const Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            right: 80,
            top: 20,
            child: Container(
              child: Image.asset("assets/Reception.png"),
            ),
          ),
          Positioned(
            right: 50,
            top: 20,
            child: Container(
              child: Image.asset("assets/Wifi.png"),
            ),
          ),
          Positioned(
            right: 20,
            top: 20,
            child: Container(
              child: Image.asset("assets/battery.png"),
            ),
          ),
          Positioned(
            left: 92,
            top: 143,
            child: Container(
              width: 232,
              height: 232,
              decoration: ShapeDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/image00.gif"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(200),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 10,
            right: 0,
            top: 390,
            child: Center(
              child: Text(
                'Akash Solanki',
                style: TextStyle(
                  color: Color(0xFF2A3447),
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0.07,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 10,
            right: 0,
            top: 410,
            child: Center(
              child: Text(
                '@antivirusakash',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF707A8D),
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 30,
            top: 500,
            child: Text(
              'Completed Courses',
              style: TextStyle(
                color: Color(0xFF2A3447),
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                height: 0.09,
              ),
            ),
          ),
          const Positioned(
            right: 30,
            top: 490,
            child: Text(
              'View All',
              style: TextStyle(
                color: Color(0xFFFF5050),
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 30,
            bottom: 15, // Adjust the bottom position as needed
            right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 261,
                    height: 330,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(-0.20, -0.98),
                        end: Alignment(0.2, 0.98),
                        colors: [Color(0xFF7CA4E8), Color(0xFF517CCD)],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x336392E8),
                          blurRadius: 16,
                          offset: Offset(0, 8),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x336190E8),
                          blurRadius: 20,
                          offset: Offset(0, 12),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 30,
                          bottom: 80,
                          child: Image.asset('assets/Billy 31.png'),
                        ),
                        Positioned(
                          left: 180,
                          top: 5,
                          child: Image.asset('assets/circle.png'),
                        ),
                        const Positioned(
                          left: 0,
                          right: 30,
                          bottom: 80,
                          child: Center(
                            child: Text(
                              'Growing Startup without ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 0.09,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 0,
                          right: 138,
                          bottom: 50,
                          child: Center(
                            child: Text(
                              'Sales Team',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 0.09,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 13,
                          top: 295,
                          child: Image.asset('assets/Ellipse 3.png'),
                        ),
                         const Positioned(
                         left: 50,
                          top: 305,
                          child: Center(
                            child: Text(
                              'Kunal Shah',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 261,
                    height: 330,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(-0.20, -0.98),
                        end: Alignment(0.2, 0.98),
                        colors: [Color(0xFF7CA4E8), Color(0xFF517CCD)],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x336392E8),
                          blurRadius: 16,
                          offset: Offset(0, 8),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x336190E8),
                          blurRadius: 20,
                          offset: Offset(0, 12),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 30,
                          bottom: 110,
                          child: Image.asset('assets/Billy 65.png'),
                        ),
                        Positioned(
                          left: 180,
                          top: 5,
                          child: Image.asset('assets/circle.png'),
                        ),
                        const Positioned(
                          left: 0,
                          right: 30,
                          bottom: 80,
                          child: Center(
                            child: Text(
                              'Find Powerful Tips for',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 0.09,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 25,
                          bottom: 50,
                          child: Center(
                            child: Text(
                              'Wealth & Success',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 1.0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 25,
                          top: 290,
                          child: Image.asset('assets/Ellipse 3.png'),
                        ),
                         const Positioned(
                         left: 55,
                          top: 300,
                          child: Center(
                            child: Text(
                              'Kunal Shah',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
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
