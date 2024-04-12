import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final bool isOpen;
  final VoidCallback onClose;

  const Menu({super.key, required this.isOpen, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      left: isOpen ? 0 : -MediaQuery.of(context).size.width * 0.75,
      top: 0,
      bottom: 0,
      width: MediaQuery.of(context).size.width * 0.75,
      child: GestureDetector(
        onTap: onClose,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.07, -1.00),
              end: Alignment(-0.07, 1),
              colors: [Color(0xFFFF7070), Color(0xFFFF4F4F)],
            ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          padding: const EdgeInsets.only(left: 24, top: 59),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Mentors',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Startup Courses',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Trainings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Pricing',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'About Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'FAQs',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


