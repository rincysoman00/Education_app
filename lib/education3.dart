
import 'package:flutter/material.dart';
import 'package:startup_education/menu.dart';
import 'package:startup_education/start_up.dart';


class Startup3 extends StatefulWidget {
  const Startup3({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Startup3State createState() => _Startup3State();
}
  class _Startup3State extends State<Startup3> {
  bool _isMenuOpen = false;

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FF),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: _isMenuOpen ? MediaQuery.of(context).size.width * 0.75 : 0,
            child: GestureDetector(
              onTap: () {
                if (_isMenuOpen) {
                  _toggleMenu();
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.transparent,
                child: StartupPageContent(toggleMenu: _toggleMenu),
              ),
            ),
          ),
          if (_isMenuOpen)
            Positioned(
              left: 0,
              top: 0,
              width: MediaQuery.of(context).size.width * 0.75, // Adjust width to 75% of screen width
              height: MediaQuery.of(context).size.height,
              child: Menu(
                isOpen: _isMenuOpen,
                onClose: _toggleMenu,
              ),
            ),
        ],
      ),
    );
  }
}

class StartupPageContent extends StatelessWidget {
  final VoidCallback toggleMenu;

  const StartupPageContent({super.key, required this.toggleMenu});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: toggleMenu,
                child: Container(
                  width: 40,
                  height: 32,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/imagem.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              const Text(
                'Hi, Akash 👋',
                style: TextStyle(
                  color: Color(0xFF2A3447),
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const StartUp()));
          },
              child:Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/image00.gif'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 366,
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 50),
            child: Text(
              'Find your favorite startup',
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
        const SizedBox(
          height: 100,
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 40),
            child: Text(
              'courses here',
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
          // SizedBox(height: 5),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  width: 305,
                  height: 48,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Opacity(
                        opacity: 0.20,
                        child: Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Opacity(
                        opacity: 0.40,
                        child: Text(
                          'Search course',
                          style: TextStyle(
                            color: Color(0xFF2A3447),
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 25),
              Container(
                width: 48,
                height: 48,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(0.07, -1.00),
                    end: Alignment(-0.07, 1),
                    colors: [Color(0xFFFF7070), Color(0xFFFF4F4F)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x4CFF6A6A),
                      blurRadius: 16,
                      offset: Offset(0, 8),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 13,
                        top: 13,
                        child: Container(
                          width: 22,
                          height: 18,
                          child: Stack(
                            children: [
                              Image.asset('assets/feather_sliders.png'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'My Courses',
                  style: TextStyle(
                    color: Color(0xFF2A3447),
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0.09,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
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
            ],
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 261,
                    height: 330,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.07, -1.00),
                        end: Alignment(-0.07, 1),
                        colors: [Color(0xFFFFAC70), Color(0xFFFF844F)],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x4CFF7171),
                          blurRadius: 20,
                          offset: Offset(0, 12),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x4CFF9F69),
                          blurRadius: 16,
                          offset: Offset(0, 8),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: Container(
                            width: 200,
                            height: 60,
                            child: Image.asset('assets/circle.png'),
                          ),
                        ),
                        Positioned(
                          left: 75,
                          top: 40,
                          child: Container(
                            width: 111.32,
                            height: 170,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/avator.png'),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x4CFF7171),
                                  blurRadius: 19.59,
                                  offset: Offset(0, 6.53),
                                  spreadRadius: 1.96,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 240,
                          left: 20,
                          child: SizedBox(
                            width: 237,
                            child: Text(
                              'Finding Co-Founder in ',
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
                          top: 260,
                          left: 20,
                          child: SizedBox(
                            width: 237,
                            child: Text(
                              'early days',
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
    Stack(
  children: [
    Positioned(
      top: 290,
      left: 20,
      child: Container(
        width: 28,
        height: 28,
        decoration: const ShapeDecoration(
          shape: CircleBorder(),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/Ellipse1.png'),
          ),
        ),
      ),
    ),
    const Positioned(
      top: 297,
      left: 60,
      child: Text(
        'Ankur Warikoo',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          height: 0,
        ),
      ),
    ),
  ],
               ),

                        Positioned(
                          top: 250,
                          left: 130,
                          child: Container(
                            width: 5.95,
                            height: 12.49,
                            decoration: ShapeDecoration(
                              gradient: const RadialGradient(
                                center: Alignment(0.42, 0.74),
                                radius: 0.05,
                                colors: [Color(0xFF363B66), Color(0xFF171029)],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.55),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x7284120B),
                                  blurRadius: 2.38,
                                  offset: Offset(0, 0.89),
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0x3F39160B),
                                  blurRadius: 1.78,
                                  offset: Offset(0, 0.30),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 250,
                          left: 160,
                          child: Container(
                            width: 5.95,
                            height: 12.49,
                            decoration: ShapeDecoration(
                              gradient: const RadialGradient(
                                center: Alignment(0.42, 0.74),
                                radius: 0.05,
                                colors: [Color(0xFF363B66), Color(0xFF171029)],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.55),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x7284120B),
                                  blurRadius: 2.38,
                                  offset: Offset(0, 0.89),
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0x3F39160B),
                                  blurRadius: 1.78,
                                  offset: Offset(0, 0.30),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 260,
                          left: 150,
                          child: Container(
                            width: 2.94,
                            height: 4.24,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFFFE9D9),
                              shape: CircleBorder(),
                            ),
                          ),
                        ),
                      ],
                    
                    ),
                  ),
                ),
                const SizedBox(width: 10), // Adjust the width as needed for spacing
                Container(
                  width: 261,
                  height: 330,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.00, 1.00),
                      end: Alignment(0, -1),
                      colors: [Color(0xFF02AAB0), Color(0xFF00CDAC)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3300CBAC),
                        blurRadius: 20,
                        offset: Offset(0, 12),
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: Color(0x3300CCAC),
                        blurRadius: 16,
                        offset: Offset(0, 8),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Container(
                          width: 200,
                          height: 60,
                          child: Image.asset('assets/circle.png'),
                        ),
                      ),
                      Positioned(
                        left: 75,
                        top: 40,
                        child: Container(
                          width: 111.32,
                          height: 170,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/test.png'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3300CBAC),
                                blurRadius: 19.59,
                                offset: Offset(0, 6.53),
                                spreadRadius: 1.96,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 240,
                        left: 20,
                        child: SizedBox(
                          width: 237,
                          child: Text(
                            'Getting first seed ',
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
                        top: 260,
                        left: 20,
                        child: SizedBox(
                          width: 237,
                          child: Text(
                            'checking getlist',
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
                        top: 289,
                        left: 20,
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: const ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/Ellipse1.png"),
                              fit: BoxFit.fill,
                            ),
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 297,
                        left: 60,
                        child: Text(
                          'Ankur Warikoo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 250,
                        left: 130,
                        child: Container(
                          width: 5.95,
                          height: 12.49,
                          decoration: ShapeDecoration(
                            gradient: const RadialGradient(
                              center: Alignment(0.42, 0.74),
                              radius: 0.05,
                              colors: [Color(0xFF363B66), Color(0xFF171029)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.55),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x7284120B),
                                blurRadius: 2.38,
                                offset: Offset(0, 0.89),
                                spreadRadius: 0,
                              ),
                              BoxShadow(
                                color: Color(0x3F39160B),
                                blurRadius: 1.78,
                                offset: Offset(0, 0.30),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 250,
                        left: 160,
                        child: Container(
                          width: 5.95,
                          height: 12.49,
                          decoration: ShapeDecoration(
                            gradient: const RadialGradient(
                              center: Alignment(0.42, 0.74),
                              radius: 0.05,
                              colors: [Color(0xFF363B66), Color(0xFF171029)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.55),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x7284120B),
                                blurRadius: 2.38,
                                offset: Offset(0, 0.89),
                                spreadRadius: 0,
                              ),
                              BoxShadow(
                                color: Color(0x3F39160B),
                                blurRadius: 1.78,
                                offset: Offset(0, 0.30),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 260,
                        left: 150,
                        child: Container(
                          width: 2.94,
                          height: 4.24,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFFFE9D9),
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Courses by Mentors',
                  style: TextStyle(
                    color: Color(0xFF2A3447),
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0.09,
                  ),
                ),
              ),
             
            ],
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 261,
                    height: 72,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(-0.50, 0.86),
                        end: Alignment(0.5, -0.86),
                        colors: [Color(0xFF0052D4), Color(0xFF4364F7), Color(0xFF6FB1FC)],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x33001A6F),
                          blurRadius: 16,
                          offset: Offset(4, 8),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 44,
                          decoration: const ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/Ellipse1b.png"),
                              fit: BoxFit.fill,
                            ),
                            shape: CircleBorder(),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ankur warko',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 0.07,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Founder nearby mentor',
                              style: TextStyle(
                                color: Color(0xFFCFDDFF),
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10), // Adjust the width as needed for spacing
                Container(
                  width: 261,
                  height: 72,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(-0.50, 0.86),
                      end: Alignment(0.5, -0.86),
                      colors: [Colors.black, Color(0xFF2D2C2C), Color(0xFF626262)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x33001A6F),
                        blurRadius: 16,
                        offset: Offset(4, 8),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 44,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Ellipse3b.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: CircleBorder(),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Kunal singh',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                              height: 0.07,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Founder CRED',
                            style: TextStyle(
                              color: Color(0xFFCFDDFF),
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
    );
    
  }
}